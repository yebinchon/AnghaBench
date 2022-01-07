
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lv0104cs_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EINVAL ;



 scalar_t__ IIO_LIGHT ;
 struct lv0104cs_private* iio_priv (struct iio_dev*) ;
 int lv0104cs_set_calibscale (struct lv0104cs_private*,int,int) ;
 int lv0104cs_set_int_time (struct lv0104cs_private*,int,int) ;
 int lv0104cs_set_scale (struct lv0104cs_private*,int,int) ;

__attribute__((used)) static int lv0104cs_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct lv0104cs_private *lv0104cs = iio_priv(indio_dev);

 if (chan->type != IIO_LIGHT)
  return -EINVAL;

 switch (mask) {
 case 130:
  return lv0104cs_set_calibscale(lv0104cs, val, val2);

 case 128:
  return lv0104cs_set_scale(lv0104cs, val, val2);

 case 129:
  return lv0104cs_set_int_time(lv0104cs, val, val2);

 default:
  return -EINVAL;
 }
}
