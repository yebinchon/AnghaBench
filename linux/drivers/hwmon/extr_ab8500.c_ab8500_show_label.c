
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sprintf (char*,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ab8500_show_label(struct device *dev,
  struct device_attribute *devattr, char *buf)
{
 char *label;
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int index = attr->index;

 switch (index) {
 case 1:
  label = "ext_adc1";
  break;
 case 2:
  label = "ext_adc2";
  break;
 case 3:
  label = "bat_temp";
  break;
 case 4:
  label = "bat_ctrl";
  break;
 default:
  return -EINVAL;
 }

 return sprintf(buf, "%s\n", label);
}
