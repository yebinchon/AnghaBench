
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm93_data {int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_RAMP_TO_REG (unsigned long) ;
 int LM93_REG_PWM_RAMP_CTL ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm_auto_vrdhot_ramp_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 ramp;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 ramp = lm93_read_byte(client, LM93_REG_PWM_RAMP_CTL);
 ramp = (ramp & 0xf0) | (LM93_RAMP_TO_REG(val) & 0x0f);
 lm93_write_byte(client, LM93_REG_PWM_RAMP_CTL, ramp);
 mutex_unlock(&data->update_lock);
 return 0;
}
