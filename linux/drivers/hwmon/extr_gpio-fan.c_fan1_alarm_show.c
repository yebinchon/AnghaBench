
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int alarm_gpio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gpio_fan_data* dev_get_drvdata (struct device*) ;
 int gpiod_get_value_cansleep (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_alarm_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct gpio_fan_data *fan_data = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n",
         gpiod_get_value_cansleep(fan_data->alarm_gpio));
}
