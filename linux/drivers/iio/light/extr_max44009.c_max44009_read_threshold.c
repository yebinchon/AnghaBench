
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int client; } ;
struct iio_dev {int dummy; } ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_RISING ;
 int MAX44009_THRESH_EXP_MASK ;
 int MAX44009_THRESH_EXP_RSHIFT ;
 int MAX44009_THRESH_MANT_LSHIFT ;
 int MAX44009_THRESH_MANT_MASK ;
 scalar_t__ MAX44009_UPPER_THR_MINIMUM ;
 int i2c_smbus_read_byte_data (int ,int) ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int max44009_get_thr_reg (int) ;

__attribute__((used)) static int max44009_read_threshold(struct iio_dev *indio_dev,
       enum iio_event_direction dir)
{
 struct max44009_data *data = iio_priv(indio_dev);
 int byte, reg;
 int mantissa, exponent;

 reg = max44009_get_thr_reg(dir);
 if (reg < 0)
  return reg;

 byte = i2c_smbus_read_byte_data(data->client, reg);
 if (byte < 0)
  return byte;

 mantissa = byte & MAX44009_THRESH_MANT_MASK;
 mantissa <<= MAX44009_THRESH_MANT_LSHIFT;





 if (dir == IIO_EV_DIR_RISING)
  mantissa += MAX44009_UPPER_THR_MINIMUM;





 exponent = byte & MAX44009_THRESH_EXP_MASK;
 exponent >>= MAX44009_THRESH_EXP_RSHIFT;

 return (1 << exponent) * mantissa;
}
