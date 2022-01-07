
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;
struct dpot_dac {int dpot; } ;


 int EINVAL ;



 int dev_err (struct device*,char*) ;
 int do_div (unsigned long long,long long) ;
 struct dpot_dac* iio_priv (struct iio_dev*) ;
 int iio_read_channel_scale (int ,int*,int*) ;
 int iio_read_max_channel_raw (int ,int*) ;

__attribute__((used)) static int dpot_dac_channel_max_ohms(struct iio_dev *indio_dev)
{
 struct device *dev = &indio_dev->dev;
 struct dpot_dac *dac = iio_priv(indio_dev);
 unsigned long long tmp;
 int ret;
 int val;
 int val2;
 int max;

 ret = iio_read_max_channel_raw(dac->dpot, &max);
 if (ret < 0) {
  dev_err(dev, "dpot does not indicate its raw maximum value\n");
  return ret;
 }

 switch (iio_read_channel_scale(dac->dpot, &val, &val2)) {
 case 128:
  return max * val;
 case 130:
  tmp = (unsigned long long)max * val;
  do_div(tmp, val2);
  return tmp;
 case 129:
  tmp = val * 1000000000LL * max >> val2;
  do_div(tmp, 1000000000LL);
  return tmp;
 default:
  dev_err(dev, "dpot has a scale that is too weird\n");
 }

 return -EINVAL;
}
