
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dummy; } ;


 int SCA3000_REG_INT_MASK_ADDR ;
 int SCA3000_REG_INT_MASK_RING_HALF ;
 int __sca3000_hw_ring_state_set (struct iio_dev*,int ) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_hw_ring_postdisable(struct iio_dev *indio_dev)
{
 int ret;
 struct sca3000_state *st = iio_priv(indio_dev);

 ret = __sca3000_hw_ring_state_set(indio_dev, 0);
 if (ret)
  return ret;


 mutex_lock(&st->lock);

 ret = sca3000_read_data_short(st, SCA3000_REG_INT_MASK_ADDR, 1);
 if (ret)
  goto unlock;
 ret = sca3000_write_reg(st,
    SCA3000_REG_INT_MASK_ADDR,
    st->rx[0] & ~SCA3000_REG_INT_MASK_RING_HALF);
unlock:
 mutex_unlock(&st->lock);
 return ret;
}
