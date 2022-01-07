
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stm32_timer_trigger {int regmap; } ;
struct iio_trigger {int name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int TIM_CR2 ;
 size_t TIM_CR2_MMS ;
 size_t TIM_CR2_MMS2 ;
 size_t TIM_CR2_MMS2_SHIFT ;
 size_t TIM_CR2_MMS_SHIFT ;
 struct stm32_timer_trigger* dev_get_drvdata (struct device*) ;
 char** master_mode_table ;
 int regmap_read (int ,int ,size_t*) ;
 int snprintf (char*,int ,char*,char*) ;
 scalar_t__ stm32_timer_is_trgo2_name (int ) ;
 struct iio_trigger* to_iio_trigger (struct device*) ;

__attribute__((used)) static ssize_t stm32_tt_show_master_mode(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct stm32_timer_trigger *priv = dev_get_drvdata(dev);
 struct iio_trigger *trig = to_iio_trigger(dev);
 u32 cr2;

 regmap_read(priv->regmap, TIM_CR2, &cr2);

 if (stm32_timer_is_trgo2_name(trig->name))
  cr2 = (cr2 & TIM_CR2_MMS2) >> TIM_CR2_MMS2_SHIFT;
 else
  cr2 = (cr2 & TIM_CR2_MMS) >> TIM_CR2_MMS_SHIFT;

 return snprintf(buf, PAGE_SIZE, "%s\n", master_mode_table[cr2]);
}
