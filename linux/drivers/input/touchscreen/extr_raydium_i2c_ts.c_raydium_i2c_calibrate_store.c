
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct raydium_data {int sysfs_mutex; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int cal_cmd ;


 int RAYDIUM_WAIT_READY ;
 int dev_err (int *,char*,int) ;
 struct raydium_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int raydium_i2c_write_object (struct i2c_client*,int const*,int,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t raydium_i2c_calibrate_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct raydium_data *ts = i2c_get_clientdata(client);
 static const u8 cal_cmd[] = { 0x00, 0x01, 0x9E };
 int error;

 error = mutex_lock_interruptible(&ts->sysfs_mutex);
 if (error)
  return error;

 error = raydium_i2c_write_object(client, cal_cmd, sizeof(cal_cmd),
      RAYDIUM_WAIT_READY);
 if (error)
  dev_err(&client->dev, "calibrate command failed: %d\n", error);

 mutex_unlock(&ts->sysfs_mutex);
 return error ?: count;
}
