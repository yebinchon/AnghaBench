
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm73_data {int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ s32 ;
typedef int s16 ;


 int PAGE_SIZE ;
 struct lm73_data* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_smbus_read_word_swapped (int ,int ) ;
 scalar_t__ scnprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *da,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct lm73_data *data = dev_get_drvdata(dev);
 int temp;

 s32 err = i2c_smbus_read_word_swapped(data->client, attr->index);
 if (err < 0)
  return err;



 temp = (((s16) err) * 250) / 32;
 return scnprintf(buf, PAGE_SIZE, "%d\n", temp);
}
