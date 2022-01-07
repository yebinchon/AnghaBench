
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis16400_state {int filt_int; TYPE_1__* variant; int adis; } ;
struct TYPE_2__ {int (* get_freq ) (struct adis16400_state*) ;int (* set_freq ) (struct adis16400_state*,int) ;} ;


 int EINVAL ;



 int * adis16400_addresses ;
 int adis16400_set_filter (struct iio_dev*,int,int) ;
 int adis_write_reg_16 (int *,int ,int) ;
 struct adis16400_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct adis16400_state*) ;
 int stub2 (struct adis16400_state*,int) ;

__attribute__((used)) static int adis16400_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long info)
{
 struct adis16400_state *st = iio_priv(indio_dev);
 int ret, sps;

 switch (info) {
 case 130:
  mutex_lock(&indio_dev->mlock);
  ret = adis_write_reg_16(&st->adis,
    adis16400_addresses[chan->scan_index], val);
  mutex_unlock(&indio_dev->mlock);
  return ret;
 case 129:




  mutex_lock(&indio_dev->mlock);
  st->filt_int = val;

  sps = st->variant->get_freq(st);
  if (sps < 0) {
   mutex_unlock(&indio_dev->mlock);
   return sps;
  }

  ret = adis16400_set_filter(indio_dev, sps,
   val * 1000 + val2 / 1000);
  mutex_unlock(&indio_dev->mlock);
  return ret;
 case 128:
  sps = val * 1000 + val2 / 1000;

  if (sps <= 0)
   return -EINVAL;

  mutex_lock(&indio_dev->mlock);
  ret = st->variant->set_freq(st, sps);
  mutex_unlock(&indio_dev->mlock);
  return ret;
 default:
  return -EINVAL;
 }
}
