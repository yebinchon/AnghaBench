
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct env {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ s8 ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IREG_LCL_TEMP ;
 struct env* dev_get_drvdata (struct device*) ;
 scalar_t__ env_read (struct env*,scalar_t__) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 int temp_nr = to_sensor_dev_attr(attr)->index;
 struct env *p = dev_get_drvdata(dev);
 s8 val;

 val = env_read(p, IREG_LCL_TEMP + temp_nr);
 return sprintf(buf, "%d\n", ((int) val) - 64);
}
