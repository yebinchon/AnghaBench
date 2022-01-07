
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int** sf2_pwm; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int W83793_REG_SF2_PWM (int,int) ;
 int clamp_val (unsigned long,int ,int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_sf2_pwm(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;
 val = clamp_val(val, 0, 0xff) >> 2;

 mutex_lock(&data->update_lock);
 data->sf2_pwm[index][nr] =
     w83793_read_value(client, W83793_REG_SF2_PWM(index, nr)) & 0xc0;
 data->sf2_pwm[index][nr] |= val;
 w83793_write_value(client, W83793_REG_SF2_PWM(index, nr),
      data->sf2_pwm[index][nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
