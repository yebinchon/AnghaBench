
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int,unsigned int*) ;
 int sprintf (char*,char*,...) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_mode_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct7802_data *data = dev_get_drvdata(dev);
 unsigned int regval;
 int ret;

 if (sattr->index > 1)
  return sprintf(buf, "1\n");

 ret = regmap_read(data->regmap, 0x5E, &regval);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", !(regval & (1 << sattr->index)));
}
