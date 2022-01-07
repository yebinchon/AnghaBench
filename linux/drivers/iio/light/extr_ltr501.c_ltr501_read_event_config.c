
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int reg_ps_intr; int reg_als_intr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int ltr501_read_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 int ret, status;

 switch (chan->type) {
 case 129:
  ret = regmap_field_read(data->reg_als_intr, &status);
  if (ret < 0)
   return ret;
  return status;
 case 128:
  ret = regmap_field_read(data->reg_ps_intr, &status);
  if (ret < 0)
   return ret;
  return status;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
