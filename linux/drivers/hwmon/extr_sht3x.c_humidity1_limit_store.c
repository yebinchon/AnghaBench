
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct sht3x_data {int data_lock; int * temperature_limits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {size_t index; } ;


 int SHT3X_MAX_HUMIDITY ;
 int SHT3X_MIN_HUMIDITY ;
 int clamp_val (int ,int ,int ) ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int kstrtou32 (char const*,int ,int *) ;
 int limit_store (struct device*,size_t,size_t,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t humidity1_limit_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t count)
{
 u32 humidity;
 int ret;
 struct sht3x_data *data = dev_get_drvdata(dev);
 u8 index = to_sensor_dev_attr(attr)->index;

 ret = kstrtou32(buf, 0, &humidity);
 if (ret)
  return ret;

 humidity = clamp_val(humidity, SHT3X_MIN_HUMIDITY, SHT3X_MAX_HUMIDITY);
 mutex_lock(&data->data_lock);
 ret = limit_store(dev, count, index, data->temperature_limits[index],
     humidity);
 mutex_unlock(&data->data_lock);

 return ret;
}
