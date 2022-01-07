
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int IREG_FAN_STAT ;
 struct env* dev_get_drvdata (struct device*) ;
 int env_read (struct env*,int ) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_fault(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 int fan_nr = to_sensor_dev_attr(attr)->index;
 struct env *p = dev_get_drvdata(dev);
 u8 val = env_read(p, IREG_FAN_STAT);
 return sprintf(buf, "%d\n", (val & (1 << fan_nr)) ? 1 : 0);
}
