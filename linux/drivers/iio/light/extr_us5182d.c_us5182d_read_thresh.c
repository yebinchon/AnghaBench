
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int px_high_th; int px_low_th; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int IIO_VAL_INT ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int us5182d_read_thresh(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int *val,
 int *val2)
{
 struct us5182d_data *data = iio_priv(indio_dev);

 switch (dir) {
 case 128:
  mutex_lock(&data->lock);
  *val = data->px_high_th;
  mutex_unlock(&data->lock);
  break;
 case 129:
  mutex_lock(&data->lock);
  *val = data->px_low_th;
  mutex_unlock(&data->lock);
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT;
}
