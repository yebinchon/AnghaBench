
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {unsigned long long max_arr; int regmap; int clk; int dev; } ;
struct iio_trigger {int name; } ;


 int EBUSY ;
 int EINVAL ;
 int MAX_TIM_PSC ;
 int TIM_ARR ;
 int TIM_CCER ;
 int TIM_CCER_CCXE ;
 int TIM_CR1 ;
 int TIM_CR1_ARPE ;
 int TIM_CR1_CEN ;
 int TIM_CR2 ;
 int TIM_CR2_MMS ;
 int TIM_CR2_MMS2 ;
 int TIM_CR2_MMS2_SHIFT ;
 int TIM_CR2_MMS_SHIFT ;
 int TIM_EGR ;
 int TIM_EGR_UG ;
 int TIM_PSC ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 int do_div (unsigned long long,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned long long) ;
 scalar_t__ stm32_timer_is_trgo2_name (int ) ;

__attribute__((used)) static int stm32_timer_start(struct stm32_timer_trigger *priv,
        struct iio_trigger *trig,
        unsigned int frequency)
{
 unsigned long long prd, div;
 int prescaler = 0;
 u32 ccer, cr1;


 div = (unsigned long long)clk_get_rate(priv->clk);

 do_div(div, frequency);

 prd = div;





 while (div > priv->max_arr) {
  prescaler++;
  div = prd;
  do_div(div, (prescaler + 1));
 }
 prd = div;

 if (prescaler > MAX_TIM_PSC) {
  dev_err(priv->dev, "prescaler exceeds the maximum value\n");
  return -EINVAL;
 }


 regmap_read(priv->regmap, TIM_CCER, &ccer);
 if (ccer & TIM_CCER_CCXE)
  return -EBUSY;

 regmap_read(priv->regmap, TIM_CR1, &cr1);
 if (!(cr1 & TIM_CR1_CEN))
  clk_enable(priv->clk);

 regmap_write(priv->regmap, TIM_PSC, prescaler);
 regmap_write(priv->regmap, TIM_ARR, prd - 1);
 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, TIM_CR1_ARPE);


 if (stm32_timer_is_trgo2_name(trig->name))
  regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS2,
       0x2 << TIM_CR2_MMS2_SHIFT);
 else
  regmap_update_bits(priv->regmap, TIM_CR2, TIM_CR2_MMS,
       0x2 << TIM_CR2_MMS_SHIFT);


 regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);

 return 0;
}
