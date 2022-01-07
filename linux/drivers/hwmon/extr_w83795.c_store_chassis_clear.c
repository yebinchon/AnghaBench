
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int update_lock; scalar_t__ valid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W83795_REG_ALARM (int) ;
 int W83795_REG_CLR_CHASSIS ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 unsigned long w83795_read (struct i2c_client*,int ) ;
 int w83795_write (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_chassis_clear(struct device *dev,
      struct device_attribute *attr, const char *buf,
      size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0 || val != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 val = w83795_read(client, W83795_REG_CLR_CHASSIS);
 val |= 0x80;
 w83795_write(client, W83795_REG_CLR_CHASSIS, val);


 w83795_read(client, W83795_REG_ALARM(5));
 data->valid = 0;
 mutex_unlock(&data->update_lock);
 return count;
}
