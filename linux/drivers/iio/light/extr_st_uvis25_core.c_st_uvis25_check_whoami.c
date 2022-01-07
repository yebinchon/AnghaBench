
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int regmap; } ;


 int ENODEV ;
 int ST_UVIS25_REG_WHOAMI_ADDR ;
 int ST_UVIS25_REG_WHOAMI_VAL ;
 int dev_err (int ,char*,...) ;
 int regmap_get_device (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int st_uvis25_check_whoami(struct st_uvis25_hw *hw)
{
 int err, data;

 err = regmap_read(hw->regmap, ST_UVIS25_REG_WHOAMI_ADDR, &data);
 if (err < 0) {
  dev_err(regmap_get_device(hw->regmap),
   "failed to read whoami register\n");
  return err;
 }

 if (data != ST_UVIS25_REG_WHOAMI_VAL) {
  dev_err(regmap_get_device(hw->regmap),
   "wrong whoami {%02x vs %02x}\n",
   data, ST_UVIS25_REG_WHOAMI_VAL);
  return -ENODEV;
 }

 return 0;
}
