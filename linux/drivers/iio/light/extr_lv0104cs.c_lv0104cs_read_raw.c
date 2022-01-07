
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lv0104cs_private {size_t calibscale; size_t scale; size_t int_time; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct TYPE_6__ {int val; int val2; } ;
struct TYPE_5__ {int val; int val2; } ;
struct TYPE_4__ {int val; int val2; } ;


 int EINVAL ;




 scalar_t__ IIO_LIGHT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct lv0104cs_private* iio_priv (struct iio_dev*) ;
 TYPE_3__* lv0104cs_calibscales ;
 int lv0104cs_get_lux (struct lv0104cs_private*,int*,int*) ;
 TYPE_2__* lv0104cs_int_times ;
 TYPE_1__* lv0104cs_scales ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lv0104cs_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct lv0104cs_private *lv0104cs = iio_priv(indio_dev);
 int ret;

 if (chan->type != IIO_LIGHT)
  return -EINVAL;

 mutex_lock(&lv0104cs->lock);

 switch (mask) {
 case 129:
  ret = lv0104cs_get_lux(lv0104cs, val, val2);
  if (ret)
   goto err_mutex;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;

 case 131:
  *val = lv0104cs_calibscales[lv0104cs->calibscale].val;
  *val2 = lv0104cs_calibscales[lv0104cs->calibscale].val2;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;

 case 128:
  *val = lv0104cs_scales[lv0104cs->scale].val;
  *val2 = lv0104cs_scales[lv0104cs->scale].val2;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;

 case 130:
  *val = lv0104cs_int_times[lv0104cs->int_time].val;
  *val2 = lv0104cs_int_times[lv0104cs->int_time].val2;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;

 default:
  ret = -EINVAL;
 }

err_mutex:
 mutex_unlock(&lv0104cs->lock);

 return ret;
}
