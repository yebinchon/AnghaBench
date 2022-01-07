
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3642_chip_data {int regmap; scalar_t__ tx_pin; int dev; int strobe_pin; int torch_pin; scalar_t__ last_flag; } ;
typedef enum lm3642_mode { ____Placeholder_lm3642_mode } lm3642_mode ;


 int FLASH_I_MASK ;
 int FLASH_I_SHIFT ;




 int MODE_BITS_MASK ;
 int MODE_BITS_SHIFT ;
 int REG_ENABLE ;
 int REG_FLAG ;
 int REG_I_CTRL ;
 int STROBE_PIN_EN_MASK ;
 int STROBE_PIN_EN_SHIFT ;
 int TORCH_I_MASK ;
 int TORCH_I_SHIFT ;
 int TORCH_PIN_EN_MASK ;
 int TORCH_PIN_EN_SHIFT ;
 int TX_PIN_EN_MASK ;
 int TX_PIN_EN_SHIFT ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,scalar_t__) ;
 int regmap_read (int ,int ,scalar_t__*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int lm3642_control(struct lm3642_chip_data *chip,
     u8 brightness, enum lm3642_mode opmode)
{
 int ret;

 ret = regmap_read(chip->regmap, REG_FLAG, &chip->last_flag);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to read REG_FLAG Register\n");
  goto out;
 }

 if (chip->last_flag)
  dev_info(chip->dev, "Last FLAG is 0x%x\n", chip->last_flag);


 if (!brightness)
  opmode = 129;

 switch (opmode) {
 case 128:
  ret = regmap_update_bits(chip->regmap, REG_I_CTRL,
      TORCH_I_MASK << TORCH_I_SHIFT,
      (brightness - 1) << TORCH_I_SHIFT);

  if (chip->torch_pin)
   opmode |= (TORCH_PIN_EN_MASK << TORCH_PIN_EN_SHIFT);
  break;

 case 131:
  ret = regmap_update_bits(chip->regmap, REG_I_CTRL,
      FLASH_I_MASK << FLASH_I_SHIFT,
      (brightness - 1) << FLASH_I_SHIFT);

  if (chip->strobe_pin)
   opmode |= (STROBE_PIN_EN_MASK << STROBE_PIN_EN_SHIFT);
  break;

 case 130:
  ret = regmap_update_bits(chip->regmap, REG_I_CTRL,
      TORCH_I_MASK << TORCH_I_SHIFT,
      (brightness - 1) << TORCH_I_SHIFT);
  break;

 case 129:

  break;

 default:
  return ret;
 }
 if (ret < 0) {
  dev_err(chip->dev, "Failed to write REG_I_CTRL Register\n");
  goto out;
 }

 if (chip->tx_pin)
  opmode |= (TX_PIN_EN_MASK << TX_PIN_EN_SHIFT);

 ret = regmap_update_bits(chip->regmap, REG_ENABLE,
     MODE_BITS_MASK << MODE_BITS_SHIFT,
     opmode << MODE_BITS_SHIFT);
out:
 return ret;
}
