
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5758_state {int lock; } ;


 int AD5758_DAC_INPUT ;
 int EINVAL ;

 int ad5758_spi_reg_write (struct ad5758_state*,int ,int) ;
 struct ad5758_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5758_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long info)
{
 struct ad5758_state *st = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 128:
  mutex_lock(&st->lock);
  ret = ad5758_spi_reg_write(st, AD5758_DAC_INPUT, val);
  mutex_unlock(&st->lock);
  return ret;
 default:
  return -EINVAL;
 }
}
