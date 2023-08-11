# Use an official Python runtime as a base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the container
COPY . /app/

# Install necessary packages
RUN pip install --no-cache-dir Flask pandas

# Create the database and tables
RUN python init_db.py

# Expose port 80
EXPOSE 80

# Run the Flask app
CMD ["python", "app.py"]
