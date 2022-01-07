
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int LTR501_ALS_THRESH_LOW ;
 int LTR501_ALS_THRESH_MASK ;
 int LTR501_ALS_THRESH_UP ;
 int LTR501_PS_THRESH_LOW ;
 int LTR501_PS_THRESH_MASK ;
 int LTR501_PS_THRESH_UP ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int ltr501_read_thresh(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         enum iio_event_info info,
         int *val, int *val2)
{
 struct ltr501_data *data = iio_priv(indio_dev);
 int ret, thresh_data;

 switch (chan->type) {
 case 129:
  switch (dir) {
  case 130:
   ret = regmap_bulk_read(data->regmap,
            LTR501_ALS_THRESH_UP,
            &thresh_data, 2);
   if (ret < 0)
    return ret;
   *val = thresh_data & LTR501_ALS_THRESH_MASK;
   return IIO_VAL_INT;
  case 131:
   ret = regmap_bulk_read(data->regmap,
            LTR501_ALS_THRESH_LOW,
            &thresh_data, 2);
   if (ret < 0)
    return ret;
   *val = thresh_data & LTR501_ALS_THRESH_MASK;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 128:
  switch (dir) {
  case 130:
   ret = regmap_bulk_read(data->regmap,
            LTR501_PS_THRESH_UP,
            &thresh_data, 2);
   if (ret < 0)
    return ret;
   *val = thresh_data & LTR501_PS_THRESH_MASK;
   return IIO_VAL_INT;
  case 131:
   ret = regmap_bulk_read(data->regmap,
            LTR501_PS_THRESH_LOW,
            &thresh_data, 2);
   if (ret < 0)
    return ret;
   *val = thresh_data & LTR501_PS_THRESH_MASK;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
