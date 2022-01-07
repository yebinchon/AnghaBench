
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_madc_data {int dev; } ;


 int TWL4030_MADC_CTRL1 ;
 int TWL4030_MADC_MADCON ;
 int TWL4030_MODULE_MADC ;
 int TWL_MODULE_MAIN_CHARGE ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_madc_set_power(struct twl4030_madc_data *madc, int on)
{
 u8 regval;
 int ret;

 ret = twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE,
         &regval, TWL4030_MADC_CTRL1);
 if (ret) {
  dev_err(madc->dev, "unable to read madc ctrl1 reg 0x%X\n",
   TWL4030_MADC_CTRL1);
  return ret;
 }
 if (on)
  regval |= TWL4030_MADC_MADCON;
 else
  regval &= ~TWL4030_MADC_MADCON;
 ret = twl_i2c_write_u8(TWL4030_MODULE_MADC, regval, TWL4030_MADC_CTRL1);
 if (ret) {
  dev_err(madc->dev, "unable to write madc ctrl1 reg 0x%X\n",
   TWL4030_MADC_CTRL1);
  return ret;
 }

 return 0;
}
