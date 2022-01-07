
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int regmap; int reg_enable_als; int reg_int_als; int reg_enable_pxs; int reg_int_pxs; int reg_enable_ges; int reg_int_ges; } ;


 int APDS9960_DEFAULT_GEXTH ;
 int APDS9960_DEFAULT_GPENTH ;
 int APDS9960_DEFAULT_PERS ;
 int APDS9960_REG_GCONF_1 ;
 int APDS9960_REG_GCONF_1_GFIFO_THRES_MASK ;
 int APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT ;
 int APDS9960_REG_GEXTH ;
 int APDS9960_REG_GPENTH ;
 int APDS9960_REG_PERS ;
 int BIT (int ) ;
 int apds9960_set_it_time (struct apds9960_data*,int) ;
 int apds9960_set_powermode (struct apds9960_data*,int) ;
 int regmap_field_write (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int apds9960_chip_init(struct apds9960_data *data)
{
 int ret;


 ret = apds9960_set_it_time(data, 28000);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_int_ges, 0);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_enable_ges, 0);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_int_pxs, 0);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_enable_pxs, 1);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_int_als, 0);
 if (ret)
  return ret;


 ret = regmap_field_write(data->reg_enable_als, 1);
 if (ret)
  return ret;




 ret = regmap_write(data->regmap, APDS9960_REG_PERS,
      APDS9960_DEFAULT_PERS);
 if (ret)
  return ret;





 ret = regmap_update_bits(data->regmap, APDS9960_REG_GCONF_1,
   APDS9960_REG_GCONF_1_GFIFO_THRES_MASK,
   BIT(0) << APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT);
 if (ret)
  return ret;


 ret = regmap_write(data->regmap, APDS9960_REG_GPENTH,
      APDS9960_DEFAULT_GPENTH);
 if (ret)
  return ret;

 ret = regmap_write(data->regmap, APDS9960_REG_GEXTH,
      APDS9960_DEFAULT_GEXTH);
 if (ret)
  return ret;

 return apds9960_set_powermode(data, 1);
}
