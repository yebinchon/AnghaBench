
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct gpio_trig_data {unsigned long inverted; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int gpio_trig_irq (int ,struct led_classdev*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct gpio_trig_data* led_trigger_get_drvdata (struct device*) ;
 struct led_classdev* led_trigger_get_led (struct device*) ;

__attribute__((used)) static ssize_t gpio_trig_inverted_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t n)
{
 struct led_classdev *led = led_trigger_get_led(dev);
 struct gpio_trig_data *gpio_data = led_trigger_get_drvdata(dev);
 unsigned long inverted;
 int ret;

 ret = kstrtoul(buf, 10, &inverted);
 if (ret < 0)
  return ret;

 if (inverted > 1)
  return -EINVAL;

 gpio_data->inverted = inverted;


 gpio_trig_irq(0, led);

 return n;
}
