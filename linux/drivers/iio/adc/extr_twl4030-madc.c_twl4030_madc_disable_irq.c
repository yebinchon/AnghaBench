
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_madc_data {int imr; int dev; } ;


 int TWL4030_MODULE_MADC ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_madc_disable_irq(struct twl4030_madc_data *madc, u8 id)
{
 u8 val;
 int ret;

 ret = twl_i2c_read_u8(TWL4030_MODULE_MADC, &val, madc->imr);
 if (ret) {
  dev_err(madc->dev, "unable to read imr register 0x%X\n",
   madc->imr);
  return ret;
 }
 val |= (1 << id);
 ret = twl_i2c_write_u8(TWL4030_MODULE_MADC, val, madc->imr);
 if (ret) {
  dev_err(madc->dev,
   "unable to write imr register 0x%X\n", madc->imr);
  return ret;
 }

 return 0;
}
