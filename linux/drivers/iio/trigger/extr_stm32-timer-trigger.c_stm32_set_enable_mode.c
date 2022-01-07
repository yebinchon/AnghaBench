
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; int clk; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 int clk_enable (int ) ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int stm32_enable_mode2sms (unsigned int) ;

__attribute__((used)) static int stm32_set_enable_mode(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     unsigned int mode)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 int sms = stm32_enable_mode2sms(mode);
 u32 val;

 if (sms < 0)
  return sms;




 if (sms == 6) {
  regmap_read(priv->regmap, TIM_CR1, &val);
  if (!(val & TIM_CR1_CEN))
   clk_enable(priv->clk);
 }

 regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);

 return 0;
}
