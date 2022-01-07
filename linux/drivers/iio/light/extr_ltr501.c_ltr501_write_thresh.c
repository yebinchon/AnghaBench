
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int lock_ps; int regmap; int lock_als; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int LTR501_ALS_THRESH_LOW ;
 int LTR501_ALS_THRESH_MASK ;
 int LTR501_ALS_THRESH_UP ;
 int LTR501_PS_THRESH_LOW ;
 int LTR501_PS_THRESH_MASK ;
 int LTR501_PS_THRESH_UP ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,int ,int*,int) ;

__attribute__((used)) static int ltr501_write_thresh(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          enum iio_event_info info,
          int val, int val2)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 int ret;

 if (val < 0)
  return -EINVAL;

 switch (chan->type) {
 case 129:
  if (val > LTR501_ALS_THRESH_MASK)
   return -EINVAL;
  switch (dir) {
  case 130:
   mutex_lock(&data->lock_als);
   ret = regmap_bulk_write(data->regmap,
      LTR501_ALS_THRESH_UP,
      &val, 2);
   mutex_unlock(&data->lock_als);
   return ret;
  case 131:
   mutex_lock(&data->lock_als);
   ret = regmap_bulk_write(data->regmap,
      LTR501_ALS_THRESH_LOW,
      &val, 2);
   mutex_unlock(&data->lock_als);
   return ret;
  default:
   return -EINVAL;
  }
 case 128:
  if (val > LTR501_PS_THRESH_MASK)
   return -EINVAL;
  switch (dir) {
  case 130:
   mutex_lock(&data->lock_ps);
   ret = regmap_bulk_write(data->regmap,
      LTR501_PS_THRESH_UP,
      &val, 2);
   mutex_unlock(&data->lock_ps);
   return ret;
  case 131:
   mutex_lock(&data->lock_ps);
   ret = regmap_bulk_write(data->regmap,
      LTR501_PS_THRESH_LOW,
      &val, 2);
   mutex_unlock(&data->lock_ps);
   return ret;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
