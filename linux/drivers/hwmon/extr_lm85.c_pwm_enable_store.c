
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lm85_data {int update_lock; TYPE_1__* autofan; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int config; } ;


 int EINVAL ;
 int LM85_REG_AFAN_CONFIG (int) ;
 struct lm85_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm85_read_value (struct i2c_client*,int ) ;
 int lm85_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_enable_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 config;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 switch (val) {
 case 0:
  config = 3;
  break;
 case 1:
  config = 7;
  break;
 case 2:




  config = 6;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);
 data->autofan[nr].config = lm85_read_value(client,
  LM85_REG_AFAN_CONFIG(nr));
 data->autofan[nr].config = (data->autofan[nr].config & ~0xe0)
  | (config << 5);
 lm85_write_value(client, LM85_REG_AFAN_CONFIG(nr),
  data->autofan[nr].config);
 mutex_unlock(&data->update_lock);
 return count;
}
