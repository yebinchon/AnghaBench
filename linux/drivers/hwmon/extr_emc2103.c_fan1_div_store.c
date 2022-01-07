
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dev; } ;
struct emc2103_data {int fan_multiplier; int fan_target; int valid; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int REG_FAN_CONF1 ;
 int dev_dbg (int *,char*,int ,int) ;
 struct emc2103_data* emc2103_update_device (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_fan_target_to_i2c (struct i2c_client*,int) ;

__attribute__((used)) static ssize_t fan1_div_store(struct device *dev, struct device_attribute *da,
         const char *buf, size_t count)
{
 struct emc2103_data *data = emc2103_update_device(dev);
 struct i2c_client *client = data->client;
 int new_range_bits, old_div = 8 / data->fan_multiplier;
 long new_div;

 int status = kstrtol(buf, 10, &new_div);
 if (status < 0)
  return status;

 if (new_div == old_div)
  return count;

 switch (new_div) {
 case 1:
  new_range_bits = 3;
  break;
 case 2:
  new_range_bits = 2;
  break;
 case 4:
  new_range_bits = 1;
  break;
 case 8:
  new_range_bits = 0;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);

 status = i2c_smbus_read_byte_data(client, REG_FAN_CONF1);
 if (status < 0) {
  dev_dbg(&client->dev, "reg 0x%02x, err %d\n",
   REG_FAN_CONF1, status);
  mutex_unlock(&data->update_lock);
  return status;
 }
 status &= 0x9F;
 status |= (new_range_bits << 5);
 i2c_smbus_write_byte_data(client, REG_FAN_CONF1, status);

 data->fan_multiplier = 8 / new_div;


 if ((data->fan_target & 0x1fe0) != 0x1fe0) {
  u16 new_target = (data->fan_target * old_div) / new_div;
  data->fan_target = min(new_target, (u16)0x1fff);
  write_fan_target_to_i2c(client, data->fan_target);
 }


 data->valid = 0;

 mutex_unlock(&data->update_lock);
 return count;
}
