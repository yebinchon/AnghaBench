
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29028_chip {int als_ir_mode; int regmap; int lux_scale; } ;
typedef enum isl29028_als_ir_mode { ____Placeholder_isl29028_als_ir_mode } isl29028_als_ir_mode ;


 int ISL29028_CONF_ALS_DIS ;
 int ISL29028_CONF_ALS_EN ;
 int ISL29028_CONF_ALS_EN_MASK ;
 int ISL29028_CONF_ALS_IR_MODE_ALS ;
 int ISL29028_CONF_ALS_IR_MODE_IR ;
 int ISL29028_CONF_ALS_IR_MODE_MASK ;
 int ISL29028_CONF_ALS_RANGE_HIGH_LUX ;
 int ISL29028_CONF_ALS_RANGE_MASK ;
 int ISL29028_CONV_TIME_MS ;



 int ISL29028_REG_CONFIGURE ;
 int isl29028_set_als_scale (struct isl29028_chip*,int ) ;
 int msleep (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int isl29028_set_als_ir_mode(struct isl29028_chip *chip,
        enum isl29028_als_ir_mode mode)
{
 int ret;

 if (chip->als_ir_mode == mode)
  return 0;

 ret = isl29028_set_als_scale(chip, chip->lux_scale);
 if (ret < 0)
  return ret;

 switch (mode) {
 case 130:
  ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
      ISL29028_CONF_ALS_IR_MODE_MASK,
      ISL29028_CONF_ALS_IR_MODE_ALS);
  if (ret < 0)
   return ret;

  ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
      ISL29028_CONF_ALS_RANGE_MASK,
      ISL29028_CONF_ALS_RANGE_HIGH_LUX);
  break;
 case 129:
  ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
      ISL29028_CONF_ALS_IR_MODE_MASK,
      ISL29028_CONF_ALS_IR_MODE_IR);
  break;
 case 128:
  return regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
       ISL29028_CONF_ALS_EN_MASK,
       ISL29028_CONF_ALS_DIS);
 }

 if (ret < 0)
  return ret;


 ret = regmap_update_bits(chip->regmap, ISL29028_REG_CONFIGURE,
     ISL29028_CONF_ALS_EN_MASK,
     ISL29028_CONF_ALS_EN);
 if (ret < 0)
  return ret;


 msleep(ISL29028_CONV_TIME_MS);

 chip->als_ir_mode = mode;

 return 0;
}
