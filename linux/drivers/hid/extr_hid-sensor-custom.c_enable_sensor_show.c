
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_custom {int enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hid_sensor_custom* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t enable_sensor_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct hid_sensor_custom *sensor_inst = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", sensor_inst->enable);
}
