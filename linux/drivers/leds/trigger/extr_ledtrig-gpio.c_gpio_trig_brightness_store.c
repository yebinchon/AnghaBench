
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_trig_data {unsigned int desired_brightness; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int dev_err (struct device*,char*) ;
 struct gpio_trig_data* led_trigger_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t gpio_trig_brightness_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t n)
{
 struct gpio_trig_data *gpio_data = led_trigger_get_drvdata(dev);
 unsigned desired_brightness;
 int ret;

 ret = sscanf(buf, "%u", &desired_brightness);
 if (ret < 1 || desired_brightness > 255) {
  dev_err(dev, "invalid value\n");
  return -EINVAL;
 }

 gpio_data->desired_brightness = desired_brightness;

 return n;
}
