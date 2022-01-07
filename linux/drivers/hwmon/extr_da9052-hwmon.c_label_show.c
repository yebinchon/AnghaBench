
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t index; } ;


 char** input_names ;
 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t label_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 return sprintf(buf, "%s\n",
         input_names[to_sensor_dev_attr(devattr)->index]);
}
