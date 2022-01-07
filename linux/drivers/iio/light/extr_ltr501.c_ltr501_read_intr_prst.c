
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int reg_ps_prst; int reg_als_prst; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;


 int EINVAL ;


 int IIO_VAL_INT_PLUS_MICRO ;
 int ltr501_als_read_samp_period (struct ltr501_data*,int*) ;
 int ltr501_ps_read_samp_period (struct ltr501_data*,int*) ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int ltr501_read_intr_prst(struct ltr501_data *data,
     enum iio_chan_type type,
     int *val2)
{
 int ret, samp_period, prst;

 switch (type) {
 case 129:
  ret = regmap_field_read(data->reg_als_prst, &prst);
  if (ret < 0)
   return ret;

  ret = ltr501_als_read_samp_period(data, &samp_period);

  if (ret < 0)
   return ret;
  *val2 = samp_period * prst;
  return IIO_VAL_INT_PLUS_MICRO;
 case 128:
  ret = regmap_field_read(data->reg_ps_prst, &prst);
  if (ret < 0)
   return ret;

  ret = ltr501_ps_read_samp_period(data, &samp_period);

  if (ret < 0)
   return ret;

  *val2 = samp_period * prst;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
