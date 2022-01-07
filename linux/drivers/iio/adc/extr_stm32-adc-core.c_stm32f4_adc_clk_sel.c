
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned long rate; scalar_t__ base; } ;
struct stm32_adc_priv {TYPE_2__ common; TYPE_1__* cfg; int aclk; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {unsigned long max_clk_rate_hz; } ;


 int ARRAY_SIZE (unsigned long*) ;
 int EINVAL ;
 int ENOENT ;
 int STM32F4_ADC_ADCPRE_MASK ;
 int STM32F4_ADC_ADCPRE_SHIFT ;
 scalar_t__ STM32F4_ADC_CCR ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int readl_relaxed (scalar_t__) ;
 unsigned long* stm32f4_pclk_div ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32f4_adc_clk_sel(struct platform_device *pdev,
          struct stm32_adc_priv *priv)
{
 unsigned long rate;
 u32 val;
 int i;


 if (!priv->aclk) {
  dev_err(&pdev->dev, "No 'adc' clock found\n");
  return -ENOENT;
 }

 rate = clk_get_rate(priv->aclk);
 if (!rate) {
  dev_err(&pdev->dev, "Invalid clock rate: 0\n");
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(stm32f4_pclk_div); i++) {
  if ((rate / stm32f4_pclk_div[i]) <= priv->cfg->max_clk_rate_hz)
   break;
 }
 if (i >= ARRAY_SIZE(stm32f4_pclk_div)) {
  dev_err(&pdev->dev, "adc clk selection failed\n");
  return -EINVAL;
 }

 priv->common.rate = rate / stm32f4_pclk_div[i];
 val = readl_relaxed(priv->common.base + STM32F4_ADC_CCR);
 val &= ~STM32F4_ADC_ADCPRE_MASK;
 val |= i << STM32F4_ADC_ADCPRE_SHIFT;
 writel_relaxed(val, priv->common.base + STM32F4_ADC_CCR);

 dev_dbg(&pdev->dev, "Using analog clock source at %ld kHz\n",
  priv->common.rate / 1000);

 return 0;
}
