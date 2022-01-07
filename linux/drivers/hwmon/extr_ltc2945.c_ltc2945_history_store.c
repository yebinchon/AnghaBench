
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CONTROL_TEST_MODE ;
 int EINVAL ;
 int LTC2945_CONTROL ;
 int LTC2945_MAX_ADIN_H ;
 int LTC2945_MAX_POWER_H ;
 int LTC2945_MAX_SENSE_H ;
 int LTC2945_MAX_VIN_H ;




 int WARN_ONCE (int,char*,int) ;
 struct regmap* dev_get_drvdata (struct device*) ;
 scalar_t__ is_power_reg (int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int regmap_bulk_write (struct regmap*,int,int*,int) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc2945_history_store(struct device *dev,
         struct device_attribute *da,
         const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct regmap *regmap = dev_get_drvdata(dev);
 u8 reg = attr->index;
 int num_regs = is_power_reg(reg) ? 3 : 2;
 u8 buf_min[3] = { 0xff, 0xff, 0xff };
 u8 buf_max[3] = { 0, 0, 0 };
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;
 if (val != 1)
  return -EINVAL;

 ret = regmap_update_bits(regmap, LTC2945_CONTROL, CONTROL_TEST_MODE,
     CONTROL_TEST_MODE);


 ret = regmap_bulk_write(regmap, reg, buf_min, num_regs);
 if (ret)
  return ret;

 switch (reg) {
 case 130:
  reg = LTC2945_MAX_POWER_H;
  break;
 case 129:
  reg = LTC2945_MAX_SENSE_H;
  break;
 case 128:
  reg = LTC2945_MAX_VIN_H;
  break;
 case 131:
  reg = LTC2945_MAX_ADIN_H;
  break;
 default:
  WARN_ONCE(1, "Bad register: 0x%x\n", reg);
  return -EINVAL;
 }

 ret = regmap_bulk_write(regmap, reg, buf_max, num_regs);


 regmap_update_bits(regmap, LTC2945_CONTROL, CONTROL_TEST_MODE, 0);

 return ret ? : count;
}
