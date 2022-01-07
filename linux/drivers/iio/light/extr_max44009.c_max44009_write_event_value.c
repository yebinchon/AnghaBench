
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_INFO_VALUE ;
 scalar_t__ IIO_LIGHT ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int max44009_get_thr_reg (int) ;
 int max44009_threshold_byte_from_fraction (int,int) ;

__attribute__((used)) static int max44009_write_event_value(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          enum iio_event_info info,
          int val, int val2)
{
 struct max44009_data *data = iio_priv(indio_dev);
 int reg, threshold;

 if (info != IIO_EV_INFO_VALUE || chan->type != IIO_LIGHT)
  return -EINVAL;

 threshold = max44009_threshold_byte_from_fraction(val, val2);
 if (threshold < 0)
  return threshold;

 reg = max44009_get_thr_reg(dir);
 if (reg < 0)
  return reg;

 return i2c_smbus_write_byte_data(data->client, reg, threshold);
}
