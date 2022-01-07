
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int REG_SMARTFAN_EN (int ) ;
 int SMARTFAN_EN_SHIFT (int ) ;
 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int kstrtou8 (char const*,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_enable_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct nct7802_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 u8 val;
 int ret;

 ret = kstrtou8(buf, 0, &val);
 if (ret < 0)
  return ret;
 if (val < 1 || val > 2)
  return -EINVAL;
 ret = regmap_update_bits(data->regmap, REG_SMARTFAN_EN(sattr->index),
     1 << SMARTFAN_EN_SHIFT(sattr->index),
     (val - 1) << SMARTFAN_EN_SHIFT(sattr->index));
 return ret ? : count;
}
