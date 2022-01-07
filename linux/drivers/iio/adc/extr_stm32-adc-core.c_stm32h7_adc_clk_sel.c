
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {unsigned long rate; scalar_t__ base; } ;
struct stm32_adc_priv {TYPE_2__ common; TYPE_1__* cfg; scalar_t__ bclk; scalar_t__ aclk; } ;
struct platform_device {int dev; } ;
struct TYPE_7__ {int ckmode; int presc; int div; } ;
struct TYPE_5__ {unsigned long max_clk_rate_hz; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ STM32H7_ADC_CCR ;
 int STM32H7_CKMODE_MASK ;
 int STM32H7_CKMODE_SHIFT ;
 int STM32H7_PRESC_MASK ;
 int STM32H7_PRESC_SHIFT ;
 unsigned long clk_get_rate (scalar_t__) ;
 int dev_dbg (int *,char*,char*,int,int) ;
 int dev_err (int *,char*) ;
 int readl_relaxed (scalar_t__) ;
 TYPE_3__* stm32h7_adc_ckmodes_spec ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32h7_adc_clk_sel(struct platform_device *pdev,
          struct stm32_adc_priv *priv)
{
 u32 ckmode, presc, val;
 unsigned long rate;
 int i, div;


 if (!priv->bclk) {
  dev_err(&pdev->dev, "No 'bus' clock found\n");
  return -ENOENT;
 }






 if (priv->aclk) {




  rate = clk_get_rate(priv->aclk);
  if (!rate) {
   dev_err(&pdev->dev, "Invalid adc clock rate: 0\n");
   return -EINVAL;
  }

  for (i = 0; i < ARRAY_SIZE(stm32h7_adc_ckmodes_spec); i++) {
   ckmode = stm32h7_adc_ckmodes_spec[i].ckmode;
   presc = stm32h7_adc_ckmodes_spec[i].presc;
   div = stm32h7_adc_ckmodes_spec[i].div;

   if (ckmode)
    continue;

   if ((rate / div) <= priv->cfg->max_clk_rate_hz)
    goto out;
  }
 }


 rate = clk_get_rate(priv->bclk);
 if (!rate) {
  dev_err(&pdev->dev, "Invalid bus clock rate: 0\n");
  return -EINVAL;
 }

 for (i = 0; i < ARRAY_SIZE(stm32h7_adc_ckmodes_spec); i++) {
  ckmode = stm32h7_adc_ckmodes_spec[i].ckmode;
  presc = stm32h7_adc_ckmodes_spec[i].presc;
  div = stm32h7_adc_ckmodes_spec[i].div;

  if (!ckmode)
   continue;

  if ((rate / div) <= priv->cfg->max_clk_rate_hz)
   goto out;
 }

 dev_err(&pdev->dev, "adc clk selection failed\n");
 return -EINVAL;

out:

 priv->common.rate = rate / div;


 val = readl_relaxed(priv->common.base + STM32H7_ADC_CCR);
 val &= ~(STM32H7_CKMODE_MASK | STM32H7_PRESC_MASK);
 val |= ckmode << STM32H7_CKMODE_SHIFT;
 val |= presc << STM32H7_PRESC_SHIFT;
 writel_relaxed(val, priv->common.base + STM32H7_ADC_CCR);

 dev_dbg(&pdev->dev, "Using %s clock/%d source at %ld kHz\n",
  ckmode ? "bus" : "adc", div, priv->common.rate / 1000);

 return 0;
}
