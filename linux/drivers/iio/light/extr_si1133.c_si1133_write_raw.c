
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si1133_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;





 int SI1133_ADCSENS_HSIG_MASK ;
 int SI1133_ADCSENS_HSIG_SHIFT ;
 int SI1133_ADCSENS_SCALE_MASK ;
 int SI1133_ADCSENS_SCALE_SHIFT ;
 struct si1133_data* iio_priv (struct iio_dev*) ;
 int si1133_scale_to_swgain (int,int) ;
 int si1133_set_integration_time (struct si1133_data*,int ,int,int) ;
 int si1133_update_adcsens (struct si1133_data*,int ,int ,int) ;

__attribute__((used)) static int si1133_write_raw(struct iio_dev *iio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct si1133_data *data = iio_priv(iio_dev);

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 129:
  case 128:
   val = si1133_scale_to_swgain(val, val2);
   if (val < 0)
    return val;

   return si1133_update_adcsens(data,
           SI1133_ADCSENS_SCALE_MASK,
           SI1133_ADCSENS_SCALE_SHIFT,
           val);
  default:
   return -EINVAL;
  }
 case 131:
  return si1133_set_integration_time(data, 0, val, val2);
 case 132:
  switch (chan->type) {
  case 129:
  case 128:
   if (val != 0 && val != 1)
    return -EINVAL;

   return si1133_update_adcsens(data,
           SI1133_ADCSENS_HSIG_MASK,
           SI1133_ADCSENS_HSIG_SHIFT,
           val);
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
