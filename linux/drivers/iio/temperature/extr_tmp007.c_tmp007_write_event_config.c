
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp007_data {int status_mask; int client; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;


 unsigned int TMP007_STATUS_LHF ;
 unsigned int TMP007_STATUS_LLF ;
 int TMP007_STATUS_MASK ;
 unsigned int TMP007_STATUS_OHF ;
 unsigned int TMP007_STATUS_OLF ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 struct tmp007_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tmp007_write_event_config(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, int state)
{
 struct tmp007_data *data = iio_priv(indio_dev);
 unsigned int status_mask;
 int ret;

 switch (chan->channel2) {
 case 129:
 if (dir == IIO_EV_DIR_RISING)
   status_mask = TMP007_STATUS_LHF;
  else
   status_mask = TMP007_STATUS_LLF;
  break;
 case 128:
  if (dir == IIO_EV_DIR_RISING)
   status_mask = TMP007_STATUS_OHF;
  else
   status_mask = TMP007_STATUS_OLF;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&data->lock);
 ret = i2c_smbus_read_word_swapped(data->client, TMP007_STATUS_MASK);
 mutex_unlock(&data->lock);
 if (ret < 0)
  return ret;

 if (state)
  ret |= status_mask;
 else
  ret &= ~status_mask;

 return i2c_smbus_write_word_swapped(data->client, TMP007_STATUS_MASK,
     data->status_mask = ret);
}
