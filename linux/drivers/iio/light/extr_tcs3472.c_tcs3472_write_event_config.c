
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcs3472_data {int lock; int enable; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int TCS3472_ENABLE ;
 int TCS3472_ENABLE_AIEN ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tcs3472_write_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 struct tcs3472_data *data = iio_priv(indio_dev);
 int ret = 0;
 u8 enable_old;

 mutex_lock(&data->lock);

 enable_old = data->enable;

 if (state)
  data->enable |= TCS3472_ENABLE_AIEN;
 else
  data->enable &= ~TCS3472_ENABLE_AIEN;

 if (enable_old != data->enable) {
  ret = i2c_smbus_write_byte_data(data->client, TCS3472_ENABLE,
      data->enable);
  if (ret)
   data->enable = enable_old;
 }
 mutex_unlock(&data->lock);

 return ret;
}
