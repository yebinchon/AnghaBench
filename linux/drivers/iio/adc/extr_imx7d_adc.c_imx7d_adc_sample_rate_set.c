
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx7d_adc_feature {size_t clk_pre_div; int core_time_unit; } ;
struct imx7d_adc_analogue_core_clk {int reg_config; int pre_div; } ;
struct imx7d_adc {scalar_t__ regs; int pre_div_num; struct imx7d_adc_feature adc_feature; } ;


 int IMX7D_EACH_CHANNEL_REG_OFFSET ;
 int IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN ;
 scalar_t__ IMX7D_REG_ADC_TIMER_UNIT ;
 struct imx7d_adc_analogue_core_clk* imx7d_adc_analogue_clk ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx7d_adc_sample_rate_set(struct imx7d_adc *info)
{
 struct imx7d_adc_feature *adc_feature = &info->adc_feature;
 struct imx7d_adc_analogue_core_clk adc_analogure_clk;
 u32 i;
 u32 tmp_cfg1;
 u32 sample_rate = 0;





 for (i = 0; i < 4; i++) {
  tmp_cfg1 =
   readl(info->regs + i * IMX7D_EACH_CHANNEL_REG_OFFSET);
  tmp_cfg1 &= ~IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN;
  writel(tmp_cfg1,
         info->regs + i * IMX7D_EACH_CHANNEL_REG_OFFSET);
 }

 adc_analogure_clk = imx7d_adc_analogue_clk[adc_feature->clk_pre_div];
 sample_rate |= adc_analogure_clk.reg_config;
 info->pre_div_num = adc_analogure_clk.pre_div;

 sample_rate |= adc_feature->core_time_unit;
 writel(sample_rate, info->regs + IMX7D_REG_ADC_TIMER_UNIT);
}
