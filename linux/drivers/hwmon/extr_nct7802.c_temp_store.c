
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 long DIV_ROUND_CLOSEST (int ,int) ;
 int clamp_val (long,int,int) ;
 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int regmap_write (int ,int,long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct nct7802_data *data = dev_get_drvdata(dev);
 int nr = sattr->nr;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 val = DIV_ROUND_CLOSEST(clamp_val(val, -128000, 127000), 1000);

 err = regmap_write(data->regmap, nr, val & 0xff);
 return err ? : count;
}
