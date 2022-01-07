
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** pwm; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 size_t CONTROL ;
 size_t EINVAL ;



 int PWM_CONFIG_REG (size_t) ;
 unsigned char PWM_MAX_REG (size_t) ;
 unsigned char PWM_MIN_REG (size_t) ;
 unsigned char PWM_REG (size_t) ;
 int adt7475_read (int ) ;
 int clamp_val (long,int ,int) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{

 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned char reg = 0;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 switch (sattr->nr) {
 case 130:

  data->pwm[CONTROL][sattr->index] =
   adt7475_read(PWM_CONFIG_REG(sattr->index));





  if (((data->pwm[CONTROL][sattr->index] >> 5) & 7) != 7) {
   mutex_unlock(&data->lock);
   return count;
  }

  reg = PWM_REG(sattr->index);
  break;

 case 128:
  reg = PWM_MIN_REG(sattr->index);
  break;

 case 129:
  reg = PWM_MAX_REG(sattr->index);
  break;
 }

 data->pwm[sattr->nr][sattr->index] = clamp_val(val, 0, 0xFF);
 i2c_smbus_write_byte_data(client, reg,
      data->pwm[sattr->nr][sattr->index]);
 mutex_unlock(&data->lock);

 return count;
}
