
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int irq; } ;
struct elan_tp_data {int baseline_ready; int sysfs_mutex; int mode; int client; TYPE_1__* ops; int min_baseline; int max_baseline; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_mode ) (int ,int ) ;int (* get_baseline_data ) (int ,int,int *) ;} ;


 int ETP_ENABLE_CALIBRATE ;
 int dev_err (struct device*,char*,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct elan_tp_data* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int,int *) ;
 int stub3 (int ,int,int *) ;
 int stub4 (int ,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t acquire_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct elan_tp_data *data = i2c_get_clientdata(client);
 int error;
 int retval;

 retval = mutex_lock_interruptible(&data->sysfs_mutex);
 if (retval)
  return retval;

 disable_irq(client->irq);

 data->baseline_ready = 0;

 data->mode |= ETP_ENABLE_CALIBRATE;
 retval = data->ops->set_mode(data->client, data->mode);
 if (retval) {
  dev_err(dev, "Failed to enable calibration mode to get baseline: %d\n",
   retval);
  goto out;
 }

 msleep(250);

 retval = data->ops->get_baseline_data(data->client, 1,
           &data->max_baseline);
 if (retval) {
  dev_err(dev, "Failed to read max baseline form device: %d\n",
   retval);
  goto out_disable_calibrate;
 }

 retval = data->ops->get_baseline_data(data->client, 0,
           &data->min_baseline);
 if (retval) {
  dev_err(dev, "Failed to read min baseline form device: %d\n",
   retval);
  goto out_disable_calibrate;
 }

 data->baseline_ready = 1;

out_disable_calibrate:
 data->mode &= ~ETP_ENABLE_CALIBRATE;
 error = data->ops->set_mode(data->client, data->mode);
 if (error) {
  dev_err(dev, "Failed to disable calibration mode after acquiring baseline: %d\n",
   error);
  if (!retval)
   retval = error;
 }
out:
 enable_irq(client->irq);
 mutex_unlock(&data->sysfs_mutex);
 return retval ?: count;
}
