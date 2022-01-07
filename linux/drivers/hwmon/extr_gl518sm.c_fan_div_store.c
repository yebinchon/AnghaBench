
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl518_data {unsigned long* fan_div; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int GL518_REG_MISC ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct gl518_data* dev_get_drvdata (struct device*) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct gl518_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int nr = to_sensor_dev_attr(attr)->index;
 int regvalue;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 switch (val) {
 case 1:
  val = 0;
  break;
 case 2:
  val = 1;
  break;
 case 4:
  val = 2;
  break;
 case 8:
  val = 3;
  break;
 default:
  dev_err(dev,
   "Invalid fan clock divider %lu, choose one of 1, 2, 4 or 8\n",
   val);
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);
 regvalue = gl518_read_value(client, GL518_REG_MISC);
 data->fan_div[nr] = val;
 regvalue = (regvalue & ~(0xc0 >> (2 * nr)))
   | (data->fan_div[nr] << (6 - 2 * nr));
 gl518_write_value(client, GL518_REG_MISC, regvalue);
 mutex_unlock(&data->update_lock);
 return count;
}
