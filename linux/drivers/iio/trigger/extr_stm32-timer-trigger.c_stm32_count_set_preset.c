
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timer_trigger {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 int TIM_ARR ;
 int TIM_CR1 ;
 int TIM_CR1_ARPE ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static ssize_t stm32_count_set_preset(struct iio_dev *indio_dev,
          uintptr_t private,
          const struct iio_chan_spec *chan,
          const char *buf, size_t len)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 unsigned int preset;
 int ret;

 ret = kstrtouint(buf, 0, &preset);
 if (ret)
  return ret;


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
 regmap_write(priv->regmap, TIM_ARR, preset);

 return len;
}
