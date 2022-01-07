
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
beep_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct nct7802_data *data = dev_get_drvdata(dev);
 unsigned int regval;
 int err;

 err = regmap_read(data->regmap, sattr->nr, &regval);
 if (err)
  return err;

 return sprintf(buf, "%u\n", !!(regval & (1 << sattr->index)));
}
