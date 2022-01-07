
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ address; } ;
struct ads1015_data {scalar_t__ event_channel; int lock; int comp_mode; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int ADS1015_CFG_COMP_MODE_WINDOW ;
 int EINVAL ;


 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads1015_read_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir)
{
 struct ads1015_data *data = iio_priv(indio_dev);
 int ret = 0;

 mutex_lock(&data->lock);
 if (data->event_channel == chan->address) {
  switch (dir) {
  case 128:
   ret = 1;
   break;
  case 129:
   ret = (data->comp_mode == ADS1015_CFG_COMP_MODE_WINDOW);
   break;
  default:
   ret = -EINVAL;
   break;
  }
 }
 mutex_unlock(&data->lock);

 return ret;
}
