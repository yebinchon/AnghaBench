
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_data {int regmap; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int EINVAL ;
 struct thermal_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int regmap_write (int ,int ,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute *sda = to_sensor_dev_attr(attr);
 struct thermal_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int retval;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;
 retval = regmap_write(data->regmap, sda->index,
         DIV_ROUND_CLOSEST(val, 1000));
 if (retval < 0)
  return retval;
 return count;
}
