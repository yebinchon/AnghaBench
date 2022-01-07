
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int lock_ps; int reg_ps_intr; int lock_als; int reg_als_intr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int ltr501_write_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir, int state)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 int ret;


 if (state != 1 && state != 0)
  return -EINVAL;

 switch (chan->type) {
 case 129:
  mutex_lock(&data->lock_als);
  ret = regmap_field_write(data->reg_als_intr, state);
  mutex_unlock(&data->lock_als);
  return ret;
 case 128:
  mutex_lock(&data->lock_ps);
  ret = regmap_field_write(data->reg_ps_intr, state);
  mutex_unlock(&data->lock_ps);
  return ret;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
