
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct ina209_data {int * regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct ina209_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct ina209_data*) ;
 long ina209_from_reg (size_t,int ) ;
 struct ina209_data* ina209_update_device (struct device*) ;
 int snprintf (char*,int ,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ina209_value_show(struct device *dev,
     struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ina209_data *data = ina209_update_device(dev);
 long val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 val = ina209_from_reg(attr->index, data->regs[attr->index]);
 return snprintf(buf, PAGE_SIZE, "%ld\n", val);
}
