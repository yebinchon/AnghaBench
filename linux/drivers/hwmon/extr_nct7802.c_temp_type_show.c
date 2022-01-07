
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int REG_MODE ;
 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_type_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct nct7802_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 unsigned int mode;
 int ret;

 ret = regmap_read(data->regmap, REG_MODE, &mode);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", (mode >> (2 * sattr->index) & 3) + 2);
}
