
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct max31790_data {int* fan_dynamics; int* target_count; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int FAN_RPM_MAX ;
 int FAN_RPM_MIN ;
 int MAX31790_FAN_DYN_SR_MASK ;
 int MAX31790_FAN_DYN_SR_SHIFT ;
 int MAX31790_REG_FAN_DYNAMICS (int) ;
 int MAX31790_REG_TARGET_COUNT (int) ;
 int RPM_TO_REG (long,int) ;
 int bits_for_tach_period (long) ;
 void* clamp_val (int,int,int) ;
 struct max31790_data* dev_get_drvdata (struct device*) ;
 int get_tach_period (int) ;

 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max31790_write_fan(struct device *dev, u32 attr, int channel,
         long val)
{
 struct max31790_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int target_count;
 int err = 0;
 u8 bits;
 int sr;

 mutex_lock(&data->update_lock);

 switch (attr) {
 case 128:
  val = clamp_val(val, FAN_RPM_MIN, FAN_RPM_MAX);
  bits = bits_for_tach_period(val);
  data->fan_dynamics[channel] =
   ((data->fan_dynamics[channel] &
     ~MAX31790_FAN_DYN_SR_MASK) |
    (bits << MAX31790_FAN_DYN_SR_SHIFT));
  err = i2c_smbus_write_byte_data(client,
     MAX31790_REG_FAN_DYNAMICS(channel),
     data->fan_dynamics[channel]);
  if (err < 0)
   break;

  sr = get_tach_period(data->fan_dynamics[channel]);
  target_count = RPM_TO_REG(val, sr);
  target_count = clamp_val(target_count, 0x1, 0x7FF);

  data->target_count[channel] = target_count << 5;

  err = i2c_smbus_write_word_swapped(client,
     MAX31790_REG_TARGET_COUNT(channel),
     data->target_count[channel]);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 mutex_unlock(&data->update_lock);

 return err;
}
