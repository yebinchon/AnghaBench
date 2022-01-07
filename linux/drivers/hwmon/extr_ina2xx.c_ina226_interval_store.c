
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_data {int regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int INA226_AVG_RD_MASK ;
 int INA2XX_CONFIG ;
 unsigned long INT_MAX ;
 struct ina2xx_data* dev_get_drvdata (struct device*) ;
 int ina226_interval_to_reg (unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t ina226_interval_store(struct device *dev,
         struct device_attribute *da,
         const char *buf, size_t count)
{
 struct ina2xx_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int status;

 status = kstrtoul(buf, 10, &val);
 if (status < 0)
  return status;

 if (val > INT_MAX || val == 0)
  return -EINVAL;

 status = regmap_update_bits(data->regmap, INA2XX_CONFIG,
        INA226_AVG_RD_MASK,
        ina226_interval_to_reg(val));
 if (status < 0)
  return status;

 return count;
}
