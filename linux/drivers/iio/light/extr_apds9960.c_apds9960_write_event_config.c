
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct apds9960_data {int pxs_int; int als_int; int reg_int_als; int reg_int_pxs; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int apds9960_set_power_state (struct apds9960_data*,int) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int apds9960_write_event_config(struct iio_dev *indio_dev,
           const struct iio_chan_spec *chan,
           enum iio_event_type type,
           enum iio_event_direction dir,
           int state)
{
 struct apds9960_data *data = iio_priv(indio_dev);
 int ret;

 state = !!state;

 switch (chan->type) {
 case 128:
  if (data->pxs_int == state)
   return -EINVAL;

  ret = regmap_field_write(data->reg_int_pxs, state);
  if (ret)
   return ret;
  data->pxs_int = state;
  apds9960_set_power_state(data, state);
  break;
 case 129:
  if (data->als_int == state)
   return -EINVAL;

  ret = regmap_field_write(data->reg_int_als, state);
  if (ret)
   return ret;
  data->als_int = state;
  apds9960_set_power_state(data, state);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
