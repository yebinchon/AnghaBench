
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc {scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;


 int VF610_ADC_ADCON ;
 unsigned int VF610_ADC_AIEN ;
 unsigned int VF610_ADC_CONV_DISABLE ;
 scalar_t__ VF610_REG_ADC_GC ;
 scalar_t__ VF610_REG_ADC_HC0 ;
 struct vf610_adc* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int vf610_adc_buffer_predisable(struct iio_dev *indio_dev)
{
 struct vf610_adc *info = iio_priv(indio_dev);
 unsigned int hc_cfg = 0;
 int val;

 val = readl(info->regs + VF610_REG_ADC_GC);
 val &= ~VF610_ADC_ADCON;
 writel(val, info->regs + VF610_REG_ADC_GC);

 hc_cfg |= VF610_ADC_CONV_DISABLE;
 hc_cfg &= ~VF610_ADC_AIEN;

 writel(hc_cfg, info->regs + VF610_REG_ADC_HC0);

 return iio_triggered_buffer_predisable(indio_dev);
}
