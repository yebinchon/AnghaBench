
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct sch5627_data {int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct sch5627_data* dev_get_drvdata (struct device*) ;
 int reg_to_rpm (int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_show(struct device *dev,
       struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct sch5627_data *data = dev_get_drvdata(dev);
 int val = reg_to_rpm(data->fan_min[attr->index]);
 if (val < 0)
  return val;

 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
