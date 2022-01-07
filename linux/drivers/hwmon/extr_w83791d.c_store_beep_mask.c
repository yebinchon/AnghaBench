
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int beep_mask; int beep_enable; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BEEP_MASK_TO_REG (long) ;
 int GLOBAL_BEEP_ENABLE_MASK ;
 int GLOBAL_BEEP_ENABLE_SHIFT ;
 int * W83791D_REG_BEEP_CTRL ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83791d_write (struct i2c_client*,int ,long) ;

__attribute__((used)) static ssize_t store_beep_mask(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 int i;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);





 data->beep_mask = BEEP_MASK_TO_REG(val) & ~GLOBAL_BEEP_ENABLE_MASK;
 data->beep_mask |= (data->beep_enable << GLOBAL_BEEP_ENABLE_SHIFT);

 val = data->beep_mask;

 for (i = 0; i < 3; i++) {
  w83791d_write(client, W83791D_REG_BEEP_CTRL[i], (val & 0xff));
  val >>= 8;
 }

 mutex_unlock(&data->update_lock);

 return count;
}
