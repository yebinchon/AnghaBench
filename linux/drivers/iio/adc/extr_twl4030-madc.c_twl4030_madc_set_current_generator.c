
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_madc_data {int dev; } ;


 int TWL4030_BCI_BCICTL1 ;
 int TWL4030_BCI_ITHEN ;
 int TWL4030_BCI_TYPEN ;
 int TWL_MODULE_MAIN_CHARGE ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_madc_set_current_generator(struct twl4030_madc_data *madc,
           int chan, int on)
{
 int ret;
 int regmask;
 u8 regval;

 ret = twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE,
         &regval, TWL4030_BCI_BCICTL1);
 if (ret) {
  dev_err(madc->dev, "unable to read BCICTL1 reg 0x%X",
   TWL4030_BCI_BCICTL1);
  return ret;
 }

 regmask = chan ? TWL4030_BCI_ITHEN : TWL4030_BCI_TYPEN;
 if (on)
  regval |= regmask;
 else
  regval &= ~regmask;

 ret = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
          regval, TWL4030_BCI_BCICTL1);
 if (ret) {
  dev_err(madc->dev, "unable to write BCICTL1 reg 0x%X\n",
   TWL4030_BCI_BCICTL1);
  return ret;
 }

 return 0;
}
