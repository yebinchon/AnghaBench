
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int enabled; int regmap; } ;


 int ST_UVIS25_REG_CTRL1_ADDR ;
 int ST_UVIS25_REG_ODR_MASK ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int st_uvis25_set_enable(struct st_uvis25_hw *hw, bool enable)
{
 int err;

 err = regmap_update_bits(hw->regmap, ST_UVIS25_REG_CTRL1_ADDR,
     ST_UVIS25_REG_ODR_MASK, enable);
 if (err < 0)
  return err;

 hw->enabled = enable;

 return 0;
}
