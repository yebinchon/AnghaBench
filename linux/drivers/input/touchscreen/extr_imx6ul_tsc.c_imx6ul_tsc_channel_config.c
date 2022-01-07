
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6ul_tsc {scalar_t__ adc_regs; } ;


 int DISABLE_CONVERSION_INT ;
 scalar_t__ REG_ADC_HC0 ;
 scalar_t__ REG_ADC_HC1 ;
 scalar_t__ REG_ADC_HC2 ;
 scalar_t__ REG_ADC_HC3 ;
 scalar_t__ REG_ADC_HC4 ;
 int SELECT_CHANNEL_1 ;
 int SELECT_CHANNEL_4 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx6ul_tsc_channel_config(struct imx6ul_tsc *tsc)
{
 u32 adc_hc0, adc_hc1, adc_hc2, adc_hc3, adc_hc4;

 adc_hc0 = DISABLE_CONVERSION_INT;
 writel(adc_hc0, tsc->adc_regs + REG_ADC_HC0);

 adc_hc1 = DISABLE_CONVERSION_INT | SELECT_CHANNEL_4;
 writel(adc_hc1, tsc->adc_regs + REG_ADC_HC1);

 adc_hc2 = DISABLE_CONVERSION_INT;
 writel(adc_hc2, tsc->adc_regs + REG_ADC_HC2);

 adc_hc3 = DISABLE_CONVERSION_INT | SELECT_CHANNEL_1;
 writel(adc_hc3, tsc->adc_regs + REG_ADC_HC3);

 adc_hc4 = DISABLE_CONVERSION_INT;
 writel(adc_hc4, tsc->adc_regs + REG_ADC_HC4);
}
