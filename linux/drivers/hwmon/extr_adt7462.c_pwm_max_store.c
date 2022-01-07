
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {long pwm_max; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7462_REG_PWM_MAX ;
 size_t EINVAL ;
 long clamp_val (long,int ,int) ;
 struct adt7462_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm_max_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct adt7462_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 temp = clamp_val(temp, 0, 255);

 mutex_lock(&data->lock);
 data->pwm_max = temp;
 i2c_smbus_write_byte_data(client, ADT7462_REG_PWM_MAX, temp);
 mutex_unlock(&data->lock);

 return count;
}
