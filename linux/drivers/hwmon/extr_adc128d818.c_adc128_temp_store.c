
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int* temp; int update_lock; int client; } ;
typedef int ssize_t ;
typedef int s8 ;
struct TYPE_2__ {int index; } ;


 int ADC128_REG_TEMP_HYST ;
 int ADC128_REG_TEMP_MAX ;
 int DIV_ROUND_CLOSEST (long,int) ;
 int clamp_val (int ,int,int) ;
 struct adc128_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t adc128_temp_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct adc128_data *data = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(attr)->index;
 long val;
 int err;
 s8 regval;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 regval = clamp_val(DIV_ROUND_CLOSEST(val, 1000), -128, 127);
 data->temp[index] = regval << 1;
 i2c_smbus_write_byte_data(data->client,
      index == 1 ? ADC128_REG_TEMP_MAX
          : ADC128_REG_TEMP_HYST,
      regval);
 mutex_unlock(&data->update_lock);

 return count;
}
