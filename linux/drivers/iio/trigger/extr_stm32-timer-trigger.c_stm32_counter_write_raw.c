
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int clk; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;



 int TIM_CNT ;
 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int stm32_counter_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 u32 dat;

 switch (mask) {
 case 129:
  return regmap_write(priv->regmap, TIM_CNT, val);

 case 128:

  return -EINVAL;

 case 130:
  if (val) {
   regmap_read(priv->regmap, TIM_CR1, &dat);
   if (!(dat & TIM_CR1_CEN))
    clk_enable(priv->clk);
   regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
        TIM_CR1_CEN);
  } else {
   regmap_read(priv->regmap, TIM_CR1, &dat);
   regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
        0);
   if (dat & TIM_CR1_CEN)
    clk_disable(priv->clk);
  }
  return 0;
 }

 return -EINVAL;
}
