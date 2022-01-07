
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hts221_hw {scalar_t__ odr; int regmap; } ;
struct TYPE_3__ {scalar_t__ hz; int val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int FIELD_PREP (int ,int ) ;
 int HTS221_ODR_MASK ;
 int HTS221_REG_CNTRL1_ADDR ;
 TYPE_1__* hts221_odr_table ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int hts221_update_odr(struct hts221_hw *hw, u8 odr)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(hts221_odr_table); i++)
  if (hts221_odr_table[i].hz == odr)
   break;

 if (i == ARRAY_SIZE(hts221_odr_table))
  return -EINVAL;

 err = regmap_update_bits(hw->regmap, HTS221_REG_CNTRL1_ADDR,
     HTS221_ODR_MASK,
     FIELD_PREP(HTS221_ODR_MASK,
         hts221_odr_table[i].val));
 if (err < 0)
  return err;

 hw->odr = odr;

 return 0;
}
