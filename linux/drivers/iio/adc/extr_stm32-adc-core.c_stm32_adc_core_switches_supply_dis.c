
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc_priv {int vdda_uv; int vdd_uv; scalar_t__ booster; scalar_t__ vdd; scalar_t__ syscfg; } ;


 int STM32MP1_SYSCFG_ANASWVDD_MASK ;
 int STM32MP1_SYSCFG_PMCCLRR ;
 int regmap_write (scalar_t__,int ,int ) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void stm32_adc_core_switches_supply_dis(struct stm32_adc_priv *priv)
{
 if (priv->vdda_uv < 2700000) {
  if (priv->syscfg && priv->vdd_uv > 2700000) {
   regmap_write(priv->syscfg, STM32MP1_SYSCFG_PMCCLRR,
         STM32MP1_SYSCFG_ANASWVDD_MASK);
   regulator_disable(priv->vdd);
   return;
  }
  if (priv->booster)
   regulator_disable(priv->booster);
 }
}
