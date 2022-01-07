
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dpot_dac {long long max_ohms; int vref; int dpot; } ;


 int EINVAL ;





 int do_div (unsigned long long,long long) ;
 struct dpot_dac* iio_priv (struct iio_dev*) ;
 int iio_read_channel_raw (int ,int*) ;
 int iio_read_channel_scale (int ,int*,int*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int dpot_dac_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct dpot_dac *dac = iio_priv(indio_dev);
 int ret;
 unsigned long long tmp;

 switch (mask) {
 case 132:
  return iio_read_channel_raw(dac->dpot, val);

 case 131:
  ret = iio_read_channel_scale(dac->dpot, val, val2);
  switch (ret) {
  case 129:
   tmp = *val * 1000000000LL;
   do_div(tmp, dac->max_ohms);
   tmp *= regulator_get_voltage(dac->vref) / 1000;
   do_div(tmp, 1000000000LL);
   *val = tmp;
   return ret;
  case 128:




   *val2 = 1;
   ret = 130;

  case 130:
   *val *= regulator_get_voltage(dac->vref) / 1000;
   *val2 *= dac->max_ohms;
   break;
  }

  return ret;
 }

 return -EINVAL;
}
