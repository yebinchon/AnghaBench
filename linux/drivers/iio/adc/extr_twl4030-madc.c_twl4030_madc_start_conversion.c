
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_data {int dev; } ;
struct twl4030_madc_conversion_method {int ctrl; } ;


 int ENOTSUPP ;
 int TWL4030_MADC_SW1 ;
 int TWL4030_MADC_SW2 ;
 int TWL4030_MADC_SW_START ;
 int TWL4030_MODULE_MADC ;
 int dev_err (int ,char*,int ) ;
 struct twl4030_madc_conversion_method* twl4030_conversion_methods ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_madc_start_conversion(struct twl4030_madc_data *madc,
      int conv_method)
{
 const struct twl4030_madc_conversion_method *method;
 int ret = 0;

 if (conv_method != TWL4030_MADC_SW1 && conv_method != TWL4030_MADC_SW2)
  return -ENOTSUPP;

 method = &twl4030_conversion_methods[conv_method];
 ret = twl_i2c_write_u8(TWL4030_MODULE_MADC, TWL4030_MADC_SW_START,
          method->ctrl);
 if (ret) {
  dev_err(madc->dev, "unable to write ctrl register 0x%X\n",
   method->ctrl);
  return ret;
 }

 return 0;
}
