
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timer_trigger {char** valids; int regmap; } ;
struct iio_trigger {int name; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 int TIM_SMCR ;
 int TIM_SMCR_TS ;
 unsigned int TIM_SMCR_TS_SHIFT ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int is_stm32_timer_trigger (struct iio_trigger*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int strlen (int ) ;
 int strncmp (int ,char const* const,int ) ;

__attribute__((used)) static int stm32_counter_validate_trigger(struct iio_dev *indio_dev,
       struct iio_trigger *trig)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 const char * const *cur = priv->valids;
 unsigned int i = 0;

 if (!is_stm32_timer_trigger(trig))
  return -EINVAL;

 while (cur && *cur) {
  if (!strncmp(trig->name, *cur, strlen(trig->name))) {
   regmap_update_bits(priv->regmap,
        TIM_SMCR, TIM_SMCR_TS,
        i << TIM_SMCR_TS_SHIFT);
   return 0;
  }
  cur++;
  i++;
 }

 return -EINVAL;
}
