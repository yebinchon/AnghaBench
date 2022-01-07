
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct activity_data {int invert; } ;
typedef int ssize_t ;


 struct activity_data* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t led_invert_show(struct device *dev,
                               struct device_attribute *attr, char *buf)
{
 struct activity_data *activity_data = led_trigger_get_drvdata(dev);

 return sprintf(buf, "%u\n", activity_data->invert);
}
