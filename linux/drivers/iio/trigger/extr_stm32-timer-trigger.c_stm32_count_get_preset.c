
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int TIM_ARR ;
 struct stm32_timer_trigger* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t stm32_count_get_preset(struct iio_dev *indio_dev,
          uintptr_t private,
          const struct iio_chan_spec *chan,
          char *buf)
{
 struct stm32_timer_trigger *priv = iio_priv(indio_dev);
 u32 arr;

 regmap_read(priv->regmap, TIM_ARR, &arr);

 return snprintf(buf, PAGE_SIZE, "%u\n", arr);
}
