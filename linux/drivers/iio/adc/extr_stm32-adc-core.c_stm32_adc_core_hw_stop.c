
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base; } ;
struct stm32_adc_priv {int vdda; int vref; scalar_t__ bclk; scalar_t__ aclk; TYPE_3__* cfg; TYPE_1__ common; int ccr_bak; } ;
struct stm32_adc_common {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {scalar_t__ ccr; } ;


 int clk_disable_unprepare (scalar_t__) ;
 struct stm32_adc_common* dev_get_drvdata (struct device*) ;
 int readl_relaxed (scalar_t__) ;
 int regulator_disable (int ) ;
 int stm32_adc_core_switches_supply_dis (struct stm32_adc_priv*) ;
 struct stm32_adc_priv* to_stm32_adc_priv (struct stm32_adc_common*) ;

__attribute__((used)) static void stm32_adc_core_hw_stop(struct device *dev)
{
 struct stm32_adc_common *common = dev_get_drvdata(dev);
 struct stm32_adc_priv *priv = to_stm32_adc_priv(common);


 priv->ccr_bak = readl_relaxed(priv->common.base + priv->cfg->regs->ccr);
 if (priv->aclk)
  clk_disable_unprepare(priv->aclk);
 if (priv->bclk)
  clk_disable_unprepare(priv->bclk);
 regulator_disable(priv->vref);
 stm32_adc_core_switches_supply_dis(priv);
 regulator_disable(priv->vdda);
}
