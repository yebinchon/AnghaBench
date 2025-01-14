
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx7d_adc {unsigned int regs; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 unsigned int IMX7D_REG_ADC_ADC_CFG ;
 struct imx7d_adc* iio_priv (struct iio_dev*) ;
 unsigned int readl (unsigned int) ;

__attribute__((used)) static int imx7d_adc_reg_access(struct iio_dev *indio_dev,
   unsigned reg, unsigned writeval,
   unsigned *readval)
{
 struct imx7d_adc *info = iio_priv(indio_dev);

 if (!readval || reg % 4 || reg > IMX7D_REG_ADC_ADC_CFG)
  return -EINVAL;

 *readval = readl(info->regs + reg);

 return 0;
}
