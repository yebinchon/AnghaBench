
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int has_trgo2; int regmap; } ;


 int TIM_CR2 ;
 int TIM_CR2_MMS2 ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void stm32_timer_detect_trgo2(struct stm32_timer_trigger *priv)
{
 u32 val;





 regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, TIM_CR2_MMS2);
 regmap_read(priv->regmap, TIM_CR2, &val);
 regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2, 0);
 priv->has_trgo2 = !!val;
}
