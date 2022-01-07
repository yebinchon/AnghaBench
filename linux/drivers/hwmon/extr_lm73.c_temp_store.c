
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm73_data {int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ s32 ;


 int LM73_TEMP_MAX ;
 int LM73_TEMP_MIN ;
 int clamp_val (long,int ,int ) ;
 struct lm73_data* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_smbus_write_word_swapped (int ,int ,short) ;
 int kstrtol (char const*,int,long*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *da,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct lm73_data *data = dev_get_drvdata(dev);
 long temp;
 short value;
 s32 err;

 int status = kstrtol(buf, 10, &temp);
 if (status < 0)
  return status;


 value = clamp_val(temp / 250, LM73_TEMP_MIN, LM73_TEMP_MAX) << 5;
 err = i2c_smbus_write_word_swapped(data->client, attr->index, value);
 return (err < 0) ? err : count;
}
