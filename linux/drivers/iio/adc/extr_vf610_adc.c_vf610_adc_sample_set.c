
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc_feature {int res_mode; int clk_div; int lst_adder_index; int sample_rate; int clk_sel; } ;
struct vf610_adc {scalar_t__ regs; int dev; struct vf610_adc_feature adc_feature; } ;
 int VF610_ADC_ADCCLK_MASK ;
 int VF610_ADC_ADLSMP_LONG ;
 int VF610_ADC_ADSTS_LONG ;
 int VF610_ADC_ADSTS_NORMAL ;
 int VF610_ADC_ADSTS_SHORT ;
 int VF610_ADC_AVGEN ;
 int VF610_ADC_AVGS_16 ;
 int VF610_ADC_AVGS_32 ;
 int VF610_ADC_AVGS_8 ;
 int VF610_ADC_AVGS_MASK ;
 int VF610_ADC_BUSCLK2_SEL ;
 int VF610_ADC_CLK_DIV2 ;
 int VF610_ADC_CLK_DIV4 ;
 int VF610_ADC_CLK_DIV8 ;
 int VF610_ADC_CLK_MASK ;
 int VF610_ADC_MODE_BIT10 ;
 int VF610_ADC_MODE_BIT12 ;
 int VF610_ADC_MODE_BIT8 ;
 int VF610_ADC_MODE_MASK ;





 scalar_t__ VF610_REG_ADC_CFG ;
 scalar_t__ VF610_REG_ADC_GC ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vf610_adc_sample_set(struct vf610_adc *info)
{
 struct vf610_adc_feature *adc_feature = &(info->adc_feature);
 int cfg_data, gc_data;

 cfg_data = readl(info->regs + VF610_REG_ADC_CFG);
 gc_data = readl(info->regs + VF610_REG_ADC_GC);


 cfg_data &= ~VF610_ADC_MODE_MASK;
 switch (adc_feature->res_mode) {
 case 8:
  cfg_data |= VF610_ADC_MODE_BIT8;
  break;
 case 10:
  cfg_data |= VF610_ADC_MODE_BIT10;
  break;
 case 12:
  cfg_data |= VF610_ADC_MODE_BIT12;
  break;
 default:
  dev_err(info->dev, "error resolution mode\n");
  break;
 }


 cfg_data &= ~(VF610_ADC_CLK_MASK | VF610_ADC_ADCCLK_MASK);
 switch (adc_feature->clk_div) {
 case 1:
  break;
 case 2:
  cfg_data |= VF610_ADC_CLK_DIV2;
  break;
 case 4:
  cfg_data |= VF610_ADC_CLK_DIV4;
  break;
 case 8:
  cfg_data |= VF610_ADC_CLK_DIV8;
  break;
 case 16:
  switch (adc_feature->clk_sel) {
  case 141:
   cfg_data |= VF610_ADC_BUSCLK2_SEL | VF610_ADC_CLK_DIV8;
   break;
  default:
   dev_err(info->dev, "error clk divider\n");
   break;
  }
  break;
 }





 switch (adc_feature->lst_adder_index) {
 case 136:
  break;
 case 135:
  cfg_data |= VF610_ADC_ADSTS_SHORT;
  break;
 case 134:
  cfg_data |= VF610_ADC_ADSTS_NORMAL;
  break;
 case 133:
  cfg_data |= VF610_ADC_ADSTS_LONG;
  break;
 case 140:
  cfg_data |= VF610_ADC_ADLSMP_LONG;
  break;
 case 139:
  cfg_data |= VF610_ADC_ADLSMP_LONG;
  cfg_data |= VF610_ADC_ADSTS_SHORT;
  break;
 case 138:
  cfg_data |= VF610_ADC_ADLSMP_LONG;
  cfg_data |= VF610_ADC_ADSTS_NORMAL;
  break;
 case 137:
  cfg_data |= VF610_ADC_ADLSMP_LONG;
  cfg_data |= VF610_ADC_ADSTS_NORMAL;
  break;
 default:
  dev_err(info->dev, "error in sample time select\n");
 }


 cfg_data &= ~VF610_ADC_AVGS_MASK;
 gc_data &= ~VF610_ADC_AVGEN;
 switch (adc_feature->sample_rate) {
 case 132:
  break;
 case 129:
  gc_data |= VF610_ADC_AVGEN;
  break;
 case 128:
  gc_data |= VF610_ADC_AVGEN;
  cfg_data |= VF610_ADC_AVGS_8;
  break;
 case 131:
  gc_data |= VF610_ADC_AVGEN;
  cfg_data |= VF610_ADC_AVGS_16;
  break;
 case 130:
  gc_data |= VF610_ADC_AVGEN;
  cfg_data |= VF610_ADC_AVGS_32;
  break;
 default:
  dev_err(info->dev,
   "error hardware sample average select\n");
 }

 writel(cfg_data, info->regs + VF610_REG_ADC_CFG);
 writel(gc_data, info->regs + VF610_REG_ADC_GC);
}
