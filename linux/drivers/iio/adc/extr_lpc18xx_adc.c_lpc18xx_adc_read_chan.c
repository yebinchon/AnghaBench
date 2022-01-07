
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc18xx_adc {int cr_reg; int dev; scalar_t__ base; } ;


 int BIT (unsigned int) ;
 int LPC18XX_ADC_CONV_DONE ;
 scalar_t__ LPC18XX_ADC_CR ;
 int LPC18XX_ADC_CR_START_NOW ;
 scalar_t__ LPC18XX_ADC_GDR ;
 int LPC18XX_ADC_SAMPLE_MASK ;
 int LPC18XX_ADC_SAMPLE_SHIFT ;
 int dev_warn (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int lpc18xx_adc_read_chan(struct lpc18xx_adc *adc, unsigned int ch)
{
 int ret;
 u32 reg;

 reg = adc->cr_reg | BIT(ch) | LPC18XX_ADC_CR_START_NOW;
 writel(reg, adc->base + LPC18XX_ADC_CR);

 ret = readl_poll_timeout(adc->base + LPC18XX_ADC_GDR, reg,
     reg & LPC18XX_ADC_CONV_DONE, 3, 9);
 if (ret) {
  dev_warn(adc->dev, "adc read timed out\n");
  return ret;
 }

 return (reg >> LPC18XX_ADC_SAMPLE_SHIFT) & LPC18XX_ADC_SAMPLE_MASK;
}
