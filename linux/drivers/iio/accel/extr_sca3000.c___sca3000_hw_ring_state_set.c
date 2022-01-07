
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dev; } ;


 int SCA3000_REG_MODE_ADDR ;
 int SCA3000_REG_MODE_RING_BUF_ENABLE ;
 int dev_info (int *,char*) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static inline
int __sca3000_hw_ring_state_set(struct iio_dev *indio_dev, bool state)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  goto error_ret;
 if (state) {
  dev_info(&indio_dev->dev, "supposedly enabling ring buffer\n");
  ret = sca3000_write_reg(st,
   SCA3000_REG_MODE_ADDR,
   (st->rx[0] | SCA3000_REG_MODE_RING_BUF_ENABLE));
 } else
  ret = sca3000_write_reg(st,
   SCA3000_REG_MODE_ADDR,
   (st->rx[0] & ~SCA3000_REG_MODE_RING_BUF_ENABLE));
error_ret:
 mutex_unlock(&st->lock);

 return ret;
}
