
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lp55xx_led {unsigned long max_current; struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int lock; TYPE_1__* cfg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_led_current ) (struct lp55xx_led*,int ) ;} ;


 size_t EINVAL ;
 struct lp55xx_led* dev_to_lp55xx_led (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct lp55xx_led*,int ) ;

__attribute__((used)) static ssize_t lp55xx_store_current(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len)
{
 struct lp55xx_led *led = dev_to_lp55xx_led(dev);
 struct lp55xx_chip *chip = led->chip;
 unsigned long curr;

 if (kstrtoul(buf, 0, &curr))
  return -EINVAL;

 if (curr > led->max_current)
  return -EINVAL;

 if (!chip->cfg->set_led_current)
  return len;

 mutex_lock(&chip->lock);
 chip->cfg->set_led_current(led, (u8)curr);
 mutex_unlock(&chip->lock);

 return len;
}
