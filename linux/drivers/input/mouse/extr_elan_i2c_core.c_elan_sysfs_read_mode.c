
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct elan_tp_data {int sysfs_mutex; int client; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
struct TYPE_2__ {int (* iap_get_mode ) (int ,int*) ;} ;


 struct elan_tp_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int stub1 (int ,int*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t elan_sysfs_read_mode(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct elan_tp_data *data = i2c_get_clientdata(client);
 int error;
 enum tp_mode mode;

 error = mutex_lock_interruptible(&data->sysfs_mutex);
 if (error)
  return error;

 error = data->ops->iap_get_mode(data->client, &mode);

 mutex_unlock(&data->sysfs_mutex);

 if (error)
  return error;

 return sprintf(buf, "%d\n", (int)mode);
}
