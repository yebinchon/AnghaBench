
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct emc2103_data {int fan_target; unsigned long fan_multiplier; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long FAN_RPM_FACTOR ;
 void* clamp_val (unsigned long,int ,int) ;
 struct emc2103_data* emc2103_update_device (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_fan_target_to_i2c (struct i2c_client*,int) ;

__attribute__((used)) static ssize_t fan1_target_store(struct device *dev,
     struct device_attribute *da, const char *buf,
     size_t count)
{
 struct emc2103_data *data = emc2103_update_device(dev);
 struct i2c_client *client = data->client;
 unsigned long rpm_target;

 int result = kstrtoul(buf, 10, &rpm_target);
 if (result < 0)
  return result;


 rpm_target = clamp_val(rpm_target, 0, 16384);

 mutex_lock(&data->update_lock);

 if (rpm_target == 0)
  data->fan_target = 0x1fff;
 else
  data->fan_target = clamp_val(
   (FAN_RPM_FACTOR * data->fan_multiplier) / rpm_target,
   0, 0x1fff);

 write_fan_target_to_i2c(client, data->fan_target);

 mutex_unlock(&data->update_lock);
 return count;
}
