
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_trigger {int regmap; } ;
struct iio_trigger {int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int MASTER_MODE2_MAX ;
 int MASTER_MODE_MAX ;
 int TIM_CR2 ;
 int TIM_CR2_MMS ;
 int TIM_CR2_MMS2 ;
 int TIM_CR2_MMS2_SHIFT ;
 int TIM_CR2_MMS_SHIFT ;
 int TIM_EGR ;
 int TIM_EGR_UG ;
 struct stm32_timer_trigger* dev_get_drvdata (struct device*) ;
 int * master_mode_table ;
 int regmap_update_bits (int ,int ,int,int) ;
 scalar_t__ stm32_timer_is_trgo2_name (int ) ;
 int strlen (int ) ;
 int strncmp (int ,char const*,int ) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static ssize_t stm32_tt_store_master_mode(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct stm32_timer_trigger *priv = dev_get_drvdata(dev);
 struct iio_trigger *trig = to_iio_trigger(dev);
 u32 mask, shift, master_mode_max;
 int i;

 if (stm32_timer_is_trgo2_name(trig->name)) {
  mask = TIM_CR2_MMS2;
  shift = TIM_CR2_MMS2_SHIFT;
  master_mode_max = MASTER_MODE2_MAX;
 } else {
  mask = TIM_CR2_MMS;
  shift = TIM_CR2_MMS_SHIFT;
  master_mode_max = MASTER_MODE_MAX;
 }

 for (i = 0; i <= master_mode_max; i++) {
  if (!strncmp(master_mode_table[i], buf,
        strlen(master_mode_table[i]))) {
   regmap_update_bits(priv->regmap, TIM_CR2, mask,
        i << shift);

   regmap_update_bits(priv->regmap, TIM_EGR,
        TIM_EGR_UG, TIM_EGR_UG);
   return len;
  }
 }

 return -EINVAL;
}
