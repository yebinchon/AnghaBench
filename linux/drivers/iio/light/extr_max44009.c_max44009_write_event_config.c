
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_TYPE_THRESH ;
 scalar_t__ IIO_LIGHT ;
 int MAX44009_REG_INT_EN ;
 int MAX44009_REG_THR_TIMER ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct max44009_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max44009_write_event_config(struct iio_dev *indio_dev,
           const struct iio_chan_spec *chan,
           enum iio_event_type type,
           enum iio_event_direction dir,
           int state)
{
 struct max44009_data *data = iio_priv(indio_dev);
 int ret;

 if (chan->type != IIO_LIGHT || type != IIO_EV_TYPE_THRESH)
  return -EINVAL;

 ret = i2c_smbus_write_byte_data(data->client,
     MAX44009_REG_INT_EN, state);
 if (ret < 0)
  return ret;





 return i2c_smbus_write_byte_data(data->client,
      MAX44009_REG_THR_TIMER, 0);
}
