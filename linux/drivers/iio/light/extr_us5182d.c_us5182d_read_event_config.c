
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int rising_en; int falling_en; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int us5182d_read_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir)
{
 struct us5182d_data *data = iio_priv(indio_dev);
 int ret;

 switch (dir) {
 case 128:
  mutex_lock(&data->lock);
  ret = data->rising_en;
  mutex_unlock(&data->lock);
  break;
 case 129:
  mutex_lock(&data->lock);
  ret = data->falling_en;
  mutex_unlock(&data->lock);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
