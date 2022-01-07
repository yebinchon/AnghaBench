
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int als_thresh_low; int als_thresh_high; int als_persistence; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;


 int VCNL4035_ALS_CONF ;
 int VCNL4035_ALS_PERS_MASK ;
 int VCNL4035_ALS_THDH ;
 int VCNL4035_ALS_THDL ;
 int hweight8 (int) ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int vcnl4035_write_thresh(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, enum iio_event_info info, int val,
  int val2)
{
 struct vcnl4035_data *data = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 128:

  if (val < 0 || val > 65535)
   return -EINVAL;
  if (dir == IIO_EV_DIR_RISING) {
   if (val < data->als_thresh_low)
    return -EINVAL;
   ret = regmap_write(data->regmap, VCNL4035_ALS_THDH,
        val);
   if (ret)
    return ret;
   data->als_thresh_high = val;
  } else {
   if (val > data->als_thresh_high)
    return -EINVAL;
   ret = regmap_write(data->regmap, VCNL4035_ALS_THDL,
        val);
   if (ret)
    return ret;
   data->als_thresh_low = val;
  }
  return ret;
 case 129:

  if (val < 0 || val > 8 || hweight8(val) != 1)
   return -EINVAL;
  ret = regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
      VCNL4035_ALS_PERS_MASK, val);
  if (!ret)
   data->als_persistence = val;
  return ret;
 default:
  return -EINVAL;
 }
}
