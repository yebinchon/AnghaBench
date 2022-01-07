
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc654_data {int valid; int* rpm_output; int* fan_fault; int config; int status; int duty_cycle; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct tc654_data* ERR_PTR (int) ;
 int TC654_REG_CONFIG ;
 int TC654_REG_DUTY_CYCLE ;
 int TC654_REG_FAN_FAULT (int) ;
 int TC654_REG_RPM (int) ;
 int TC654_REG_STATUS ;
 scalar_t__ TC654_UPDATE_INTERVAL ;
 struct tc654_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct tc654_data *tc654_update_client(struct device *dev)
{
 struct tc654_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret = 0;

 mutex_lock(&data->update_lock);
 if (time_before(jiffies, data->last_updated + TC654_UPDATE_INTERVAL) &&
     likely(data->valid))
  goto out;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_RPM(0));
 if (ret < 0)
  goto out;
 data->rpm_output[0] = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_RPM(1));
 if (ret < 0)
  goto out;
 data->rpm_output[1] = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_FAN_FAULT(0));
 if (ret < 0)
  goto out;
 data->fan_fault[0] = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_FAN_FAULT(1));
 if (ret < 0)
  goto out;
 data->fan_fault[1] = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_CONFIG);
 if (ret < 0)
  goto out;
 data->config = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_STATUS);
 if (ret < 0)
  goto out;
 data->status = ret;

 ret = i2c_smbus_read_byte_data(client, TC654_REG_DUTY_CYCLE);
 if (ret < 0)
  goto out;
 data->duty_cycle = ret & 0x0f;

 data->last_updated = jiffies;
 data->valid = 1;
out:
 mutex_unlock(&data->update_lock);

 if (ret < 0)
  data = ERR_PTR(ret);

 return data;
}
