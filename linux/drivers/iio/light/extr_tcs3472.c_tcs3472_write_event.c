
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcs3472_data {int high_thresh; int low_thresh; int apers; int lock; int client; int atime; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;




 int TCS3472_AIHT ;
 int TCS3472_AILT ;
 int TCS3472_PERS ;
 int USEC_PER_SEC ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int i2c_smbus_write_word_data (int ,int ,int) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* tcs3472_intr_pers ;

__attribute__((used)) static int tcs3472_write_event(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int val,
 int val2)
{
 struct tcs3472_data *data = iio_priv(indio_dev);
 int ret;
 u8 command;
 int period;
 int i;

 mutex_lock(&data->lock);
 switch (info) {
 case 128:
  switch (dir) {
  case 130:
   command = TCS3472_AIHT;
   break;
  case 131:
   command = TCS3472_AILT;
   break;
  default:
   ret = -EINVAL;
   goto error;
  }
  ret = i2c_smbus_write_word_data(data->client, command, val);
  if (ret)
   goto error;

  if (dir == 130)
   data->high_thresh = val;
  else
   data->low_thresh = val;
  break;
 case 129:
  period = val * USEC_PER_SEC + val2;
  for (i = 1; i < ARRAY_SIZE(tcs3472_intr_pers) - 1; i++) {
   if (period <= (256 - data->atime) * 2400 *
     tcs3472_intr_pers[i])
    break;
  }
  ret = i2c_smbus_write_byte_data(data->client, TCS3472_PERS, i);
  if (ret)
   goto error;

  data->apers = i;
  break;
 default:
  ret = -EINVAL;
  break;
 }
error:
 mutex_unlock(&data->lock);

 return ret;
}
