
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83792d_data {int* pwmenable; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int W83792D_REG_FAN_CFG ;
 struct w83792d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83792d_read_value (struct i2c_client*,int ) ;
 int w83792d_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwmenable(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index - 1;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83792d_data *data = i2c_get_clientdata(client);
 u8 fan_cfg_tmp, cfg1_tmp, cfg2_tmp, cfg3_tmp, cfg4_tmp;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val < 1 || val > 3)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 switch (val) {
 case 1:
  data->pwmenable[nr] = 0;
  break;
 case 2:
  data->pwmenable[nr] = 2;
  break;
 case 3:
  data->pwmenable[nr] = 1;
  break;
 }
 cfg1_tmp = data->pwmenable[0];
 cfg2_tmp = (data->pwmenable[1]) << 2;
 cfg3_tmp = (data->pwmenable[2]) << 4;
 cfg4_tmp = w83792d_read_value(client, W83792D_REG_FAN_CFG) & 0xc0;
 fan_cfg_tmp = ((cfg4_tmp | cfg3_tmp) | cfg2_tmp) | cfg1_tmp;
 w83792d_write_value(client, W83792D_REG_FAN_CFG, fan_cfg_tmp);
 mutex_unlock(&data->update_lock);

 return count;
}
