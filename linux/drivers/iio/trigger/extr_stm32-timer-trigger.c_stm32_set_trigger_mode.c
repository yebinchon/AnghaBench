
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timer_trigger {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int stm32_set_trigger_mode(struct iio_dev *indio_dev,
      const struct iio_chan_spec *chan,
      unsigned int mode)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);

 regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, TIM_SMCR_SMS);

 return 0;
}
