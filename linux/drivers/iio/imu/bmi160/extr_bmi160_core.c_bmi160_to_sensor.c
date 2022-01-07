
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
typedef enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;


 int BMI160_ACCEL ;
 int BMI160_GYRO ;
 int EINVAL ;



__attribute__((used)) static enum bmi160_sensor_type bmi160_to_sensor(enum iio_chan_type iio_type)
{
 switch (iio_type) {
 case 129:
  return BMI160_ACCEL;
 case 128:
  return BMI160_GYRO;
 default:
  return -EINVAL;
 }
}
