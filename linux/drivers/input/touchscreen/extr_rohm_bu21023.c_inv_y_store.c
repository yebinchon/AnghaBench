
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rohm_ts_data {TYPE_1__* input; int setup2; scalar_t__ initialized; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mutex; } ;


 int COMMON_SETUP2 ;
 int INV_Y ;
 struct rohm_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t inv_y_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rohm_ts_data *ts = i2c_get_clientdata(client);
 unsigned int val;
 int error;

 error = kstrtouint(buf, 0, &val);
 if (error)
  return error;

 error = mutex_lock_interruptible(&ts->input->mutex);
 if (error)
  return error;

 if (val)
  ts->setup2 |= INV_Y;
 else
  ts->setup2 &= ~INV_Y;

 if (ts->initialized)
  error = i2c_smbus_write_byte_data(client, COMMON_SETUP2,
        ts->setup2);

 mutex_unlock(&ts->input->mutex);

 return error ? error : count;
}
