
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; int clk; } ;


 int TIM_ARR ;
 int TIM_CCER ;
 int TIM_CCER_CCXE ;
 int TIM_CR1 ;
 int TIM_CR1_ARPE ;
 int TIM_CR1_CEN ;
 int TIM_EGR ;
 int TIM_EGR_UG ;
 int TIM_PSC ;
 int clk_disable (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void stm32_timer_stop(struct stm32_timer_trigger *priv)
{
 u32 ccer, cr1;

 regmap_read(priv->regmap, TIM_CCER, &ccer);
 if (ccer & TIM_CCER_CCXE)
  return;

 regmap_read(priv->regmap, TIM_CR1, &cr1);
 if (cr1 & TIM_CR1_CEN)
  clk_disable(priv->clk);


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
 regmap_write(priv->regmap, TIM_PSC, 0);
 regmap_write(priv->regmap, TIM_ARR, 0);


 regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
}
