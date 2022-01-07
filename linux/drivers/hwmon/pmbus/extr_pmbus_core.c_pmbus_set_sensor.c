
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmbus_sensor {int data; int reg; int page; } ;
struct pmbus_data {int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int _pmbus_write_word_data (struct i2c_client*,int ,int ,int ) ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmbus_data2reg (struct pmbus_data*,struct pmbus_sensor*,long) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct pmbus_sensor* to_pmbus_sensor (struct device_attribute*) ;

__attribute__((used)) static ssize_t pmbus_set_sensor(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct pmbus_data *data = i2c_get_clientdata(client);
 struct pmbus_sensor *sensor = to_pmbus_sensor(devattr);
 ssize_t rv = count;
 long val = 0;
 int ret;
 u16 regval;

 if (kstrtol(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 regval = pmbus_data2reg(data, sensor, val);
 ret = _pmbus_write_word_data(client, sensor->page, sensor->reg, regval);
 if (ret < 0)
  rv = ret;
 else
  sensor->data = regval;
 mutex_unlock(&data->update_lock);
 return rv;
}
