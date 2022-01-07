
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int pattern_trig_store_patterns (struct led_classdev*,char const*,int *,size_t,int) ;

__attribute__((used)) static ssize_t pattern_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);

 return pattern_trig_store_patterns(led_cdev, buf, ((void*)0), count, 0);
}
