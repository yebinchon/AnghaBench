
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_samples_reg {TYPE_1__* attr; int page; } ;
struct pmbus_data {int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int reg; } ;


 size_t EINVAL ;
 int _pmbus_write_word_data (struct i2c_client*,int ,int ,long) ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct pmbus_samples_reg* to_samples_reg (struct device_attribute*) ;

__attribute__((used)) static ssize_t pmbus_set_samples(struct device *dev,
     struct device_attribute *devattr,
     const char *buf, size_t count)
{
 int ret;
 long val;
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct pmbus_samples_reg *reg = to_samples_reg(devattr);
 struct pmbus_data *data = i2c_get_clientdata(client);

 if (kstrtol(buf, 0, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 ret = _pmbus_write_word_data(client, reg->page, reg->attr->reg, val);
 mutex_unlock(&data->update_lock);

 return ret ? : count;
}
