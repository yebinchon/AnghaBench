
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83792d_data {int update_lock; scalar_t__ valid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W83792D_REG_CHASSIS_CLR ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
intrusion0_alarm_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 unsigned long val;
 u8 reg;

 if (kstrtoul(buf, 10, &val) || val != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 reg = w83792d_read_value(client, W83792D_REG_CHASSIS_CLR);
 w83792d_write_value(client, W83792D_REG_CHASSIS_CLR, reg | 0x80);
 data->valid = 0;
 mutex_unlock(&data->update_lock);

 return count;
}
