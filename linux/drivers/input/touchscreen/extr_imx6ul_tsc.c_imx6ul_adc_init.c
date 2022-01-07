
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6ul_tsc {int average_select; scalar_t__ adc_regs; int dev; int completion; scalar_t__ average_enable; } ;


 int ADC_12BIT_MODE ;
 int ADC_AIEN ;
 int ADC_AVGE ;
 int ADC_AVGS_MASK ;
 int ADC_AVGS_SHIFT ;
 int ADC_CAL ;
 int ADC_CALF ;
 int ADC_CLK_DIV_8 ;
 int ADC_CLK_DIV_MASK ;
 int ADC_CONV_DISABLE ;
 int ADC_CONV_MODE_MASK ;
 int ADC_HARDWARE_TRIGGER ;
 int ADC_INPUT_CLK_MASK ;
 int ADC_IPG_CLK ;
 int ADC_SAMPLE_MODE_MASK ;
 int ADC_SHORT_SAMPLE_MODE ;
 int ADC_TIMEOUT ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ REG_ADC_CFG ;
 scalar_t__ REG_ADC_GC ;
 scalar_t__ REG_ADC_GS ;
 scalar_t__ REG_ADC_HC0 ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imx6ul_adc_init(struct imx6ul_tsc *tsc)
{
 u32 adc_hc = 0;
 u32 adc_gc;
 u32 adc_gs;
 u32 adc_cfg;
 unsigned long timeout;

 reinit_completion(&tsc->completion);

 adc_cfg = readl(tsc->adc_regs + REG_ADC_CFG);
 adc_cfg &= ~(ADC_CONV_MODE_MASK | ADC_INPUT_CLK_MASK);
 adc_cfg |= ADC_12BIT_MODE | ADC_IPG_CLK;
 adc_cfg &= ~(ADC_CLK_DIV_MASK | ADC_SAMPLE_MODE_MASK);
 adc_cfg |= ADC_CLK_DIV_8 | ADC_SHORT_SAMPLE_MODE;
 if (tsc->average_enable) {
  adc_cfg &= ~ADC_AVGS_MASK;
  adc_cfg |= (tsc->average_select) << ADC_AVGS_SHIFT;
 }
 adc_cfg &= ~ADC_HARDWARE_TRIGGER;
 writel(adc_cfg, tsc->adc_regs + REG_ADC_CFG);


 adc_hc |= ADC_AIEN;
 adc_hc |= ADC_CONV_DISABLE;
 writel(adc_hc, tsc->adc_regs + REG_ADC_HC0);


 adc_gc = readl(tsc->adc_regs + REG_ADC_GC);
 adc_gc |= ADC_CAL;
 if (tsc->average_enable)
  adc_gc |= ADC_AVGE;
 writel(adc_gc, tsc->adc_regs + REG_ADC_GC);

 timeout = wait_for_completion_timeout
   (&tsc->completion, ADC_TIMEOUT);
 if (timeout == 0) {
  dev_err(tsc->dev, "Timeout for adc calibration\n");
  return -ETIMEDOUT;
 }

 adc_gs = readl(tsc->adc_regs + REG_ADC_GS);
 if (adc_gs & ADC_CALF) {
  dev_err(tsc->dev, "ADC calibration failed\n");
  return -EINVAL;
 }


 adc_cfg = readl(tsc->adc_regs + REG_ADC_CFG);
 adc_cfg |= ADC_HARDWARE_TRIGGER;
 writel(adc_cfg, tsc->adc_regs + REG_ADC_CFG);

 return 0;
}
