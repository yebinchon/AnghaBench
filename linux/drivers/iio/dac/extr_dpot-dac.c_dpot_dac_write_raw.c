
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dpot_dac {int dpot; } ;


 int EINVAL ;

 struct dpot_dac* iio_priv (struct iio_dev*) ;
 int iio_write_channel_raw (int ,int) ;

__attribute__((used)) static int dpot_dac_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val, int val2, long mask)
{
 struct dpot_dac *dac = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return iio_write_channel_raw(dac->dpot, val);
 }

 return -EINVAL;
}
