
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_dac {int regs; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int VF610_DAC_DAT0 (int) ;
 struct vf610_dac* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int vf610_write_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int val, int val2,
   long mask)
{
 struct vf610_dac *info = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  mutex_lock(&indio_dev->mlock);
  writel(VF610_DAC_DAT0(val), info->regs);
  mutex_unlock(&indio_dev->mlock);
  return 0;

 default:
  return -EINVAL;
 }
}
