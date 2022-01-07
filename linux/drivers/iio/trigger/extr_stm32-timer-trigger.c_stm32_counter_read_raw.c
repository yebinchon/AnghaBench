
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int TIM_CNT ;
 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int stm32_counter_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 u32 dat;

 switch (mask) {
 case 129:
  regmap_read(priv->regmap, TIM_CNT, &dat);
  *val = dat;
  return IIO_VAL_INT;

 case 130:
  regmap_read(priv->regmap, TIM_CR1, &dat);
  *val = (dat & TIM_CR1_CEN) ? 1 : 0;
  return IIO_VAL_INT;

 case 128:
  regmap_read(priv->regmap, TIM_SMCR, &dat);
  dat &= TIM_SMCR_SMS;

  *val = 1;
  *val2 = 0;


  if (dat == 3)
   *val2 = 2;

  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
