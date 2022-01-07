
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_data {int regmap; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct thermal_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct sensor_device_attribute *sda = to_sensor_dev_attr(attr);
 struct thermal_data *data = dev_get_drvdata(dev);
 unsigned int val;
 int retval;

 retval = regmap_read(data->regmap, sda->index, &val);
 if (retval < 0)
  return retval;
 return sprintf(buf, "%d000\n", val);
}
