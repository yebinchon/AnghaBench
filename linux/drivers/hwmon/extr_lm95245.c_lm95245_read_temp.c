
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct lm95245_data {struct regmap* regmap; } ;
struct device {int dummy; } ;


 int CFG2_REMOTE_TT ;
 int EOPNOTSUPP ;
 int LM95245_REG_RW_COMMON_HYSTERESIS ;
 int LM95245_REG_RW_CONFIG2 ;
 int LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT ;
 int LM95245_REG_RW_REMOTE_OFFH ;
 int LM95245_REG_RW_REMOTE_OFFL ;
 int LM95245_REG_RW_REMOTE_OS_LIMIT ;
 int LM95245_REG_RW_REMOTE_TCRIT_LIMIT ;
 int LM95245_REG_R_LOCAL_TEMPH_S ;
 int LM95245_REG_R_LOCAL_TEMPL_S ;
 int LM95245_REG_R_REMOTE_TEMPH_S ;
 int LM95245_REG_R_REMOTE_TEMPH_U ;
 int LM95245_REG_R_REMOTE_TEMPL_S ;
 int LM95245_REG_R_REMOTE_TEMPL_U ;
 int LM95245_REG_R_STATUS1 ;
 int STATUS1_DIODE_FAULT ;
 int STATUS1_LOC ;
 int STATUS1_ROS ;
 int STATUS1_RTCRIT ;
 struct lm95245_data* dev_get_drvdata (struct device*) ;
 int regmap_read (struct regmap*,int,int*) ;
 long temp_from_reg_signed (int,int) ;
 long temp_from_reg_unsigned (int,int) ;

__attribute__((used)) static int lm95245_read_temp(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct lm95245_data *data = dev_get_drvdata(dev);
 struct regmap *regmap = data->regmap;
 int ret, regl, regh, regvall, regvalh;

 switch (attr) {
 case 133:
  regl = channel ? LM95245_REG_R_REMOTE_TEMPL_S :
     LM95245_REG_R_LOCAL_TEMPL_S;
  regh = channel ? LM95245_REG_R_REMOTE_TEMPH_S :
     LM95245_REG_R_LOCAL_TEMPH_S;
  ret = regmap_read(regmap, regl, &regvall);
  if (ret < 0)
   return ret;
  ret = regmap_read(regmap, regh, &regvalh);
  if (ret < 0)
   return ret;






  if (!channel || (regvalh & 0x80) || regvalh < 0x7f) {
   *val = temp_from_reg_signed(regvalh, regvall);
   return 0;
  }
  ret = regmap_read(regmap, LM95245_REG_R_REMOTE_TEMPL_U,
      &regvall);
  if (ret < 0)
   return ret;
  ret = regmap_read(regmap, LM95245_REG_R_REMOTE_TEMPH_U,
      &regvalh);
  if (ret < 0)
   return ret;
  *val = temp_from_reg_unsigned(regvalh, regvall);
  return 0;
 case 132:
  ret = regmap_read(regmap, LM95245_REG_RW_REMOTE_OS_LIMIT,
      &regvalh);
  if (ret < 0)
   return ret;
  *val = regvalh * 1000;
  return 0;
 case 137:
  regh = channel ? LM95245_REG_RW_REMOTE_TCRIT_LIMIT :
     LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT;
  ret = regmap_read(regmap, regh, &regvalh);
  if (ret < 0)
   return ret;
  *val = regvalh * 1000;
  return 0;
 case 130:
  ret = regmap_read(regmap, LM95245_REG_RW_REMOTE_OS_LIMIT,
      &regvalh);
  if (ret < 0)
   return ret;
  ret = regmap_read(regmap, LM95245_REG_RW_COMMON_HYSTERESIS,
      &regvall);
  if (ret < 0)
   return ret;
  *val = (regvalh - regvall) * 1000;
  return 0;
 case 135:
  regh = channel ? LM95245_REG_RW_REMOTE_TCRIT_LIMIT :
     LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT;
  ret = regmap_read(regmap, regh, &regvalh);
  if (ret < 0)
   return ret;
  ret = regmap_read(regmap, LM95245_REG_RW_COMMON_HYSTERESIS,
      &regvall);
  if (ret < 0)
   return ret;
  *val = (regvalh - regvall) * 1000;
  return 0;
 case 128:
  ret = regmap_read(regmap, LM95245_REG_RW_CONFIG2, &regvalh);
  if (ret < 0)
   return ret;
  *val = (regvalh & CFG2_REMOTE_TT) ? 1 : 2;
  return 0;
 case 129:
  ret = regmap_read(regmap, LM95245_REG_RW_REMOTE_OFFL,
      &regvall);
  if (ret < 0)
   return ret;
  ret = regmap_read(regmap, LM95245_REG_RW_REMOTE_OFFH,
      &regvalh);
  if (ret < 0)
   return ret;
  *val = temp_from_reg_signed(regvalh, regvall);
  return 0;
 case 131:
  ret = regmap_read(regmap, LM95245_REG_R_STATUS1, &regvalh);
  if (ret < 0)
   return ret;
  *val = !!(regvalh & STATUS1_ROS);
  return 0;
 case 136:
  ret = regmap_read(regmap, LM95245_REG_R_STATUS1, &regvalh);
  if (ret < 0)
   return ret;
  *val = !!(regvalh & (channel ? STATUS1_RTCRIT : STATUS1_LOC));
  return 0;
 case 134:
  ret = regmap_read(regmap, LM95245_REG_R_STATUS1, &regvalh);
  if (ret < 0)
   return ret;
  *val = !!(regvalh & STATUS1_DIODE_FAULT);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
