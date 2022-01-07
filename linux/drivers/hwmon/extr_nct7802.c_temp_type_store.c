
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int REG_MODE ;
 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_type_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct nct7802_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 unsigned int type;
 int err;

 err = kstrtouint(buf, 0, &type);
 if (err < 0)
  return err;
 if (sattr->index == 2 && type != 4)
  return -EINVAL;
 if (type < 3 || type > 4)
  return -EINVAL;
 err = regmap_update_bits(data->regmap, REG_MODE,
   3 << 2 * sattr->index, (type - 2) << 2 * sattr->index);
 return err ? : count;
}
