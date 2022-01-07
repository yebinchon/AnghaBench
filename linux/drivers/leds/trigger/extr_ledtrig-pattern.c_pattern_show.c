
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_trig_data {int dummy; } ;
struct led_classdev {struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int pattern_trig_show_patterns (struct pattern_trig_data*,char*,int) ;

__attribute__((used)) static ssize_t pattern_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct pattern_trig_data *data = led_cdev->trigger_data;

 return pattern_trig_show_patterns(data, buf, 0);
}
