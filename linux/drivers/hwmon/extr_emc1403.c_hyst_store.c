
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_data {int mutex; struct regmap* regmap; } ;
struct sensor_device_attribute {int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 int clamp_val (int ,int ,int) ;
 struct thermal_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t hyst_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *sda = to_sensor_dev_attr(attr);
 struct thermal_data *data = dev_get_drvdata(dev);
 struct regmap *regmap = data->regmap;
 unsigned int limit;
 int retval;
 int hyst;
 unsigned long val;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->mutex);
 retval = regmap_read(regmap, sda->index, &limit);
 if (retval < 0)
  goto fail;

 hyst = limit * 1000 - val;
 hyst = clamp_val(DIV_ROUND_CLOSEST(hyst, 1000), 0, 255);
 retval = regmap_write(regmap, 0x21, hyst);
 if (retval == 0)
  retval = count;
fail:
 mutex_unlock(&data->mutex);
 return retval;
}
