
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm93_data {int* auto_pwm_min_hyst; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_PWM_CTL4 ;
 int LM93_PWM_MAP_HI_FREQ ;
 int LM93_PWM_MAP_LO_FREQ ;
 int LM93_PWM_TO_REG (unsigned long,int ) ;
 int LM93_REG_PWM_CTL (int,int ) ;
 int LM93_REG_PWM_MIN_HYST (int) ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_auto_pwm_min_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 reg, ctl4;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 reg = lm93_read_byte(client, LM93_REG_PWM_MIN_HYST(nr));
 ctl4 = lm93_read_byte(client, LM93_REG_PWM_CTL(nr, LM93_PWM_CTL4));
 reg = (reg & 0x0f) |
  LM93_PWM_TO_REG(val, (ctl4 & 0x07) ?
    LM93_PWM_MAP_LO_FREQ :
    LM93_PWM_MAP_HI_FREQ) << 4;
 data->auto_pwm_min_hyst[nr/2] = reg;
 lm93_write_byte(client, LM93_REG_PWM_MIN_HYST(nr), reg);
 mutex_unlock(&data->update_lock);
 return count;
}
