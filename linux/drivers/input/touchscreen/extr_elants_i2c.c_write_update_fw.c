
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct elants_data {int sysfs_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_dbg (struct device*,char*,int) ;
 int elants_i2c_fw_update (struct elants_data*) ;
 struct elants_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t write_update_fw(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct elants_data *ts = i2c_get_clientdata(client);
 int error;

 error = mutex_lock_interruptible(&ts->sysfs_mutex);
 if (error)
  return error;

 error = elants_i2c_fw_update(ts);
 dev_dbg(dev, "firmware update result: %d\n", error);

 mutex_unlock(&ts->sysfs_mutex);
 return error ?: count;
}
