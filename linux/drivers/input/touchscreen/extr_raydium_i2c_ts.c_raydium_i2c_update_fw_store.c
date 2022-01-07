
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raydium_data {int sysfs_mutex; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct raydium_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int raydium_i2c_fw_update (struct raydium_data*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t raydium_i2c_update_fw_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct raydium_data *ts = i2c_get_clientdata(client);
 int error;

 error = mutex_lock_interruptible(&ts->sysfs_mutex);
 if (error)
  return error;

 error = raydium_i2c_fw_update(ts);

 mutex_unlock(&ts->sysfs_mutex);

 return error ?: count;
}
