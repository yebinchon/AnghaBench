
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_dac {int regs; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int VF610_DAC_DAT0 (int ) ;
 struct vf610_dac* iio_priv (struct iio_dev*) ;
 int readl (int ) ;

__attribute__((used)) static int vf610_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2,
   long mask)
{
 struct vf610_dac *info = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  *val = VF610_DAC_DAT0(readl(info->regs));
  return IIO_VAL_INT;
 case 128:





  *val = 3300 ;
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
