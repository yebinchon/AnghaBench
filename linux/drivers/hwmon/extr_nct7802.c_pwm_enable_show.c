
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct7802_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int REG_SMARTFAN_EN (int ) ;
 int SMARTFAN_EN_SHIFT (int ) ;
 struct nct7802_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_enable_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct nct7802_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 unsigned int reg, enabled;
 int ret;

 ret = regmap_read(data->regmap, REG_SMARTFAN_EN(sattr->index), &reg);
 if (ret < 0)
  return ret;
 enabled = reg >> SMARTFAN_EN_SHIFT(sattr->index) & 1;
 return sprintf(buf, "%u\n", enabled + 1);
}
