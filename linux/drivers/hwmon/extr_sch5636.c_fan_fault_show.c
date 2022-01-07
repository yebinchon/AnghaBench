
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct sch5636_data {int* fan_ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct sch5636_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct sch5636_data*) ;
 int SCH5636_FAN_NOT_PRESENT ;
 struct sch5636_data* sch5636_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_fault_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct sch5636_data *data = sch5636_update_device(dev);
 int val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 val = (data->fan_ctrl[attr->index] & SCH5636_FAN_NOT_PRESENT) ? 1 : 0;
 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
