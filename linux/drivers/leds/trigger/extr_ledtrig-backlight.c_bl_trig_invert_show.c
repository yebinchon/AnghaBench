
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bl_trig_notifier {int invert; } ;
typedef int ssize_t ;


 struct bl_trig_notifier* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t bl_trig_invert_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct bl_trig_notifier *n = led_trigger_get_drvdata(dev);

 return sprintf(buf, "%u\n", n->invert);
}
