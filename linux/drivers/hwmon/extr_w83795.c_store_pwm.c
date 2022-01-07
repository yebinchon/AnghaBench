
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {unsigned long** pwm; int update_lock; int clkin; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;


 int W83795_REG_PWM (int,int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long pwm_freq_to_reg (unsigned long,int ) ;
 unsigned long time_to_reg (unsigned long) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83795_write (struct i2c_client*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_pwm(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83795_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 switch (nr) {
 case 128:
  val = time_to_reg(val);
  break;
 case 129:
  val = pwm_freq_to_reg(val, data->clkin);
  break;
 default:
  val = clamp_val(val, 0, 0xff);
  break;
 }
 w83795_write(client, W83795_REG_PWM(index, nr), val);
 data->pwm[index][nr] = val;
 mutex_unlock(&data->update_lock);
 return count;
}
