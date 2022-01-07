
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ltc4215_get_voltage (struct device*,int ) ;
 int snprintf (char*,int ,char*,int const) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4215_voltage_show(struct device *dev,
        struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 const int voltage = ltc4215_get_voltage(dev, attr->index);

 return snprintf(buf, PAGE_SIZE, "%d\n", voltage);
}
