
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct adf4350_state {unsigned int* regs; unsigned int* regs_hw; } ;


 unsigned int ADF4350_REG5 ;
 unsigned int BIT (int) ;
 int EINVAL ;
 int adf4350_sync_config (struct adf4350_state*) ;
 struct adf4350_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adf4350_reg_access(struct iio_dev *indio_dev,
         unsigned reg, unsigned writeval,
         unsigned *readval)
{
 struct adf4350_state *st = iio_priv(indio_dev);
 int ret;

 if (reg > ADF4350_REG5)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);
 if (readval == ((void*)0)) {
  st->regs[reg] = writeval & ~(BIT(0) | BIT(1) | BIT(2));
  ret = adf4350_sync_config(st);
 } else {
  *readval = st->regs_hw[reg];
  ret = 0;
 }
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
