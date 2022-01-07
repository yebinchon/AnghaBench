
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef long long ssize_t ;


 int PAGE_SIZE ;
 long long ltc2945_reg_to_val (struct device*,int ) ;
 long long snprintf (char*,int ,char*,long long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc2945_value_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 long long value;

 value = ltc2945_reg_to_val(dev, attr->index);
 if (value < 0)
  return value;
 return snprintf(buf, PAGE_SIZE, "%lld\n", value);
}
