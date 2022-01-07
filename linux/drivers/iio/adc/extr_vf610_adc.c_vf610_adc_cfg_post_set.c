
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc_feature {int clk_sel; int vol_ref; scalar_t__ ovwren; } ;
struct vf610_adc {scalar_t__ regs; int dev; struct vf610_adc_feature adc_feature; } ;







 int VF610_ADC_ADACK_SEL ;
 int VF610_ADC_ADHSC_EN ;
 int VF610_ADC_ADLPC_EN ;
 int VF610_ADC_ALTCLK_SEL ;
 int VF610_ADC_OVWREN ;
 int VF610_ADC_REFSEL_VALT ;
 int VF610_ADC_REFSEL_VBG ;
 scalar_t__ VF610_REG_ADC_CFG ;
 scalar_t__ VF610_REG_ADC_GC ;
 int dev_err (int ,char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vf610_adc_cfg_post_set(struct vf610_adc *info)
{
 struct vf610_adc_feature *adc_feature = &info->adc_feature;
 int cfg_data = 0;
 int gc_data = 0;

 switch (adc_feature->clk_sel) {
 case 131:
  cfg_data |= VF610_ADC_ALTCLK_SEL;
  break;
 case 132:
  cfg_data |= VF610_ADC_ADACK_SEL;
  break;
 default:
  break;
 }


 cfg_data |= VF610_ADC_ADLPC_EN;


 cfg_data |= VF610_ADC_ADHSC_EN;


 switch (adc_feature->vol_ref) {
 case 128:
  break;
 case 130:
  cfg_data |= VF610_ADC_REFSEL_VALT;
  break;
 case 129:
  cfg_data |= VF610_ADC_REFSEL_VBG;
  break;
 default:
  dev_err(info->dev, "error voltage reference\n");
 }


 if (adc_feature->ovwren)
  cfg_data |= VF610_ADC_OVWREN;

 writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
 writel(gc_data, info->regs + VF610_REG_ADC_GC);
}
