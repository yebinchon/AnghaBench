
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base; } ;
struct stm32_adc_priv {int vdda_uv; int vdda; int vref; scalar_t__ bclk; TYPE_3__* cfg; TYPE_1__ common; int ccr_bak; scalar_t__ aclk; } ;
struct stm32_adc_common {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {scalar_t__ ccr; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 struct stm32_adc_common* dev_get_drvdata (struct device*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 int stm32_adc_core_switches_supply_dis (struct stm32_adc_priv*) ;
 int stm32_adc_core_switches_supply_en (struct stm32_adc_priv*,struct device*) ;
 struct stm32_adc_priv* to_stm32_adc_priv (struct stm32_adc_common*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int stm32_adc_core_hw_start(struct device *dev)
{
 struct stm32_adc_common *common = dev_get_drvdata(dev);
 struct stm32_adc_priv *priv = to_stm32_adc_priv(common);
 int ret;

 ret = regulator_enable(priv->vdda);
 if (ret < 0) {
  dev_err(dev, "vdda enable failed %d\n", ret);
  return ret;
 }

 ret = regulator_get_voltage(priv->vdda);
 if (ret < 0) {
  dev_err(dev, "vdda get voltage failed, %d\n", ret);
  goto err_vdda_disable;
 }
 priv->vdda_uv = ret;

 ret = stm32_adc_core_switches_supply_en(priv, dev);
 if (ret < 0)
  goto err_vdda_disable;

 ret = regulator_enable(priv->vref);
 if (ret < 0) {
  dev_err(dev, "vref enable failed\n");
  goto err_switches_dis;
 }

 if (priv->bclk) {
  ret = clk_prepare_enable(priv->bclk);
  if (ret < 0) {
   dev_err(dev, "bus clk enable failed\n");
   goto err_regulator_disable;
  }
 }

 if (priv->aclk) {
  ret = clk_prepare_enable(priv->aclk);
  if (ret < 0) {
   dev_err(dev, "adc clk enable failed\n");
   goto err_bclk_disable;
  }
 }

 writel_relaxed(priv->ccr_bak, priv->common.base + priv->cfg->regs->ccr);

 return 0;

err_bclk_disable:
 if (priv->bclk)
  clk_disable_unprepare(priv->bclk);
err_regulator_disable:
 regulator_disable(priv->vref);
err_switches_dis:
 stm32_adc_core_switches_supply_dis(priv);
err_vdda_disable:
 regulator_disable(priv->vdda);

 return ret;
}
