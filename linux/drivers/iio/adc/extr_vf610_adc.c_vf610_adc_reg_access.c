
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc {unsigned int regs; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 unsigned int VF610_REG_ADC_PCTL ;
 struct vf610_adc* iio_priv (struct iio_dev*) ;
 unsigned int readl (unsigned int) ;

__attribute__((used)) static int vf610_adc_reg_access(struct iio_dev *indio_dev,
   unsigned reg, unsigned writeval,
   unsigned *readval)
{
 struct vf610_adc *info = iio_priv(indio_dev);

 if ((readval == ((void*)0)) ||
  ((reg % 4) || (reg > VF610_REG_ADC_PCTL)))
  return -EINVAL;

 *readval = readl(info->regs + reg);

 return 0;
}
