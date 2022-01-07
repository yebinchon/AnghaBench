
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_led {int max_current; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct lp55xx_led* dev_to_lp55xx_led (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t lp55xx_show_max_current(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct lp55xx_led *led = dev_to_lp55xx_led(dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", led->max_current);
}
