
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int *) ;
 int stm32_sms2enable_mode (int ) ;

__attribute__((used)) static int stm32_get_enable_mode(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 u32 smcr;

 regmap_read(priv->regmap, TIM_SMCR, &smcr);
 smcr &= TIM_SMCR_SMS;

 return stm32_sms2enable_mode(smcr);
}
