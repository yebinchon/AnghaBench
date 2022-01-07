
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_data {int regmap; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct thermal_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t bit_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sda = to_sensor_dev_attr_2(attr);
 struct thermal_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int retval;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 retval = regmap_update_bits(data->regmap, sda->nr, sda->index,
        val ? sda->index : 0);
 if (retval < 0)
  return retval;
 return count;
}
