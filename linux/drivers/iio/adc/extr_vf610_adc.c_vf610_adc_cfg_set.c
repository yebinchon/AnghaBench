
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc_feature {scalar_t__ conv_mode; } ;
struct vf610_adc {scalar_t__ regs; struct vf610_adc_feature adc_feature; } ;


 int VF610_ADC_ADHSC_EN ;
 int VF610_ADC_ADLPC_EN ;
 scalar_t__ VF610_ADC_CONV_HIGH_SPEED ;
 scalar_t__ VF610_ADC_CONV_LOW_POWER ;
 scalar_t__ VF610_REG_ADC_CFG ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vf610_adc_cfg_set(struct vf610_adc *info)
{
 struct vf610_adc_feature *adc_feature = &(info->adc_feature);
 int cfg_data;

 cfg_data = readl(info->regs + VF610_REG_ADC_CFG);

 cfg_data &= ~VF610_ADC_ADLPC_EN;
 if (adc_feature->conv_mode == VF610_ADC_CONV_LOW_POWER)
  cfg_data |= VF610_ADC_ADLPC_EN;

 cfg_data &= ~VF610_ADC_ADHSC_EN;
 if (adc_feature->conv_mode == VF610_ADC_CONV_HIGH_SPEED)
  cfg_data |= VF610_ADC_ADHSC_EN;

 writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
}
