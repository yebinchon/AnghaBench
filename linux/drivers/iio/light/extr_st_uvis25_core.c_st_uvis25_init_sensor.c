
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int regmap; } ;


 int ST_UVIS25_REG_BDU_MASK ;
 int ST_UVIS25_REG_BOOT_MASK ;
 int ST_UVIS25_REG_CTRL1_ADDR ;
 int ST_UVIS25_REG_CTRL2_ADDR ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int st_uvis25_init_sensor(struct st_uvis25_hw *hw)
{
 int err;

 err = regmap_update_bits(hw->regmap, ST_UVIS25_REG_CTRL2_ADDR,
     ST_UVIS25_REG_BOOT_MASK, 1);
 if (err < 0)
  return err;

 msleep(2000);

 return regmap_update_bits(hw->regmap, ST_UVIS25_REG_CTRL1_ADDR,
      ST_UVIS25_REG_BDU_MASK, 1);
}
