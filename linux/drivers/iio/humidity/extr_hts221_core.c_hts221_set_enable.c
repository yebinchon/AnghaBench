
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts221_hw {int enabled; int regmap; } ;


 int FIELD_PREP (int ,int) ;
 int HTS221_ENABLE_MASK ;
 int HTS221_REG_CNTRL1_ADDR ;
 int regmap_update_bits (int ,int ,int ,int ) ;

int hts221_set_enable(struct hts221_hw *hw, bool enable)
{
 int err;

 err = regmap_update_bits(hw->regmap, HTS221_REG_CNTRL1_ADDR,
     HTS221_ENABLE_MASK,
     FIELD_PREP(HTS221_ENABLE_MASK, enable));
 if (err < 0)
  return err;

 hw->enabled = enable;

 return 0;
}
