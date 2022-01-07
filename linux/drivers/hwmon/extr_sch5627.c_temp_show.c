
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct sch5627_data {int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct sch5627_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct sch5627_data*) ;
 int reg_to_temp (int ) ;
 struct sch5627_data* sch5627_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct sch5627_data *data = sch5627_update_device(dev);
 int val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 val = reg_to_temp(data->temp[attr->index]);
 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
