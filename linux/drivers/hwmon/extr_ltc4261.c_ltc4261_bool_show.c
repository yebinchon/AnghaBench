
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct ltc4261_data {int* regs; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct ltc4261_data*) ;
 size_t LTC4261_FAULT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct ltc4261_data*) ;
 int i2c_smbus_write_byte_data (int ,size_t,int) ;
 struct ltc4261_data* ltc4261_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4261_bool_show(struct device *dev,
     struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ltc4261_data *data = ltc4261_update_device(dev);
 u8 fault;

 if (IS_ERR(data))
  return PTR_ERR(data);

 fault = data->regs[LTC4261_FAULT] & attr->index;
 if (fault)
  i2c_smbus_write_byte_data(data->client, LTC4261_FAULT, ~fault);

 return snprintf(buf, PAGE_SIZE, "%d\n", fault ? 1 : 0);
}
