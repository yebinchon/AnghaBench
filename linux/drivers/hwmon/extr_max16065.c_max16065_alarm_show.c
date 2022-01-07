
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t nr; int index; } ;
struct max16065_data {int* fault; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MAX16065_FAULT (size_t) ;
 int PAGE_SIZE ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct max16065_data* max16065_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t max16065_alarm_show(struct device *dev,
       struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(da);
 struct max16065_data *data = max16065_update_device(dev);
 int val = data->fault[attr2->nr];

 if (val < 0)
  return val;

 val &= (1 << attr2->index);
 if (val)
  i2c_smbus_write_byte_data(data->client,
       MAX16065_FAULT(attr2->nr), val);

 return snprintf(buf, PAGE_SIZE, "%d\n", !!val);
}
