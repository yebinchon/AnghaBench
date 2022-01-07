
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts221_hw {int dev; int regmap; } ;


 int ENODEV ;
 int HTS221_REG_WHOAMI_ADDR ;
 int HTS221_REG_WHOAMI_VAL ;
 int dev_err (int ,char*,...) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int hts221_check_whoami(struct hts221_hw *hw)
{
 int err, data;

 err = regmap_read(hw->regmap, HTS221_REG_WHOAMI_ADDR, &data);
 if (err < 0) {
  dev_err(hw->dev, "failed to read whoami register\n");
  return err;
 }

 if (data != HTS221_REG_WHOAMI_VAL) {
  dev_err(hw->dev, "wrong whoami {%02x vs %02x}\n",
   data, HTS221_REG_WHOAMI_VAL);
  return -ENODEV;
 }

 return 0;
}
