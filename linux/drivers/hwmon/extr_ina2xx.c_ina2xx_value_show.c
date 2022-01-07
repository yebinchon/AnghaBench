
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct ina2xx_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ina2xx_data* dev_get_drvdata (struct device*) ;
 int ina2xx_get_value (struct ina2xx_data*,int ,unsigned int) ;
 int ina2xx_read_reg (struct device*,int ,unsigned int*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ina2xx_value_show(struct device *dev,
     struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ina2xx_data *data = dev_get_drvdata(dev);
 unsigned int regval;

 int err = ina2xx_read_reg(dev, attr->index, &regval);

 if (err < 0)
  return err;

 return snprintf(buf, PAGE_SIZE, "%d\n",
   ina2xx_get_value(data, attr->index, regval));
}
