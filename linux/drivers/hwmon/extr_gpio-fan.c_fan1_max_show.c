
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_fan_data {int num_speed; TYPE_1__* speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int rpm; } ;


 struct gpio_fan_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fan1_max_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct gpio_fan_data *fan_data = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n",
         fan_data->speed[fan_data->num_speed - 1].rpm);
}
