
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6ul_tsc {scalar_t__ adc_regs; scalar_t__ tsc_regs; } ;


 int ADC_CONV_DISABLE ;
 scalar_t__ REG_ADC_HC0 ;
 scalar_t__ REG_TSC_FLOW_CONTROL ;
 int TSC_DISABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void imx6ul_tsc_disable(struct imx6ul_tsc *tsc)
{
 u32 tsc_flow;
 u32 adc_cfg;


 tsc_flow = readl(tsc->tsc_regs + REG_TSC_FLOW_CONTROL);
 tsc_flow |= TSC_DISABLE;
 writel(tsc_flow, tsc->tsc_regs + REG_TSC_FLOW_CONTROL);


 adc_cfg = readl(tsc->adc_regs + REG_ADC_HC0);
 adc_cfg |= ADC_CONV_DISABLE;
 writel(adc_cfg, tsc->adc_regs + REG_ADC_HC0);
}
