
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_trig_data {int desired_brightness; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gpio_trig_data* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t gpio_trig_brightness_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct gpio_trig_data *gpio_data = led_trigger_get_drvdata(dev);

 return sprintf(buf, "%u\n", gpio_data->desired_brightness);
}
