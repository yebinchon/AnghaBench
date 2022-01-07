
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc35240_data {int regmap; } ;


 int MMC35240_CTRL0_REFILL_BIT ;
 int MMC35240_CTRL0_RESET_BIT ;
 int MMC35240_CTRL0_SET_BIT ;
 int MMC35240_REG_CTRL0 ;
 scalar_t__ MMC35240_WAIT_CHARGE_PUMP ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int mmc35240_hw_set(struct mmc35240_data *data, bool set)
{
 int ret;
 u8 coil_bit;





 ret = regmap_update_bits(data->regmap, MMC35240_REG_CTRL0,
     MMC35240_CTRL0_REFILL_BIT,
     MMC35240_CTRL0_REFILL_BIT);
 if (ret < 0)
  return ret;
 usleep_range(MMC35240_WAIT_CHARGE_PUMP, MMC35240_WAIT_CHARGE_PUMP + 1);

 if (set)
  coil_bit = MMC35240_CTRL0_SET_BIT;
 else
  coil_bit = MMC35240_CTRL0_RESET_BIT;

 return regmap_update_bits(data->regmap, MMC35240_REG_CTRL0,
      coil_bit, coil_bit);

}
