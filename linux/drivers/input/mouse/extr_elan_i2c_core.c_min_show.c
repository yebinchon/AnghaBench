
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct elan_tp_data {int min_baseline; int sysfs_mutex; int baseline_ready; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODATA ;
 int PAGE_SIZE ;
 struct elan_tp_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t min_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct elan_tp_data *data = i2c_get_clientdata(client);
 int retval;

 retval = mutex_lock_interruptible(&data->sysfs_mutex);
 if (retval)
  return retval;

 if (!data->baseline_ready) {
  retval = -ENODATA;
  goto out;
 }

 retval = snprintf(buf, PAGE_SIZE, "%d", data->min_baseline);

out:
 mutex_unlock(&data->sysfs_mutex);
 return retval;
}
