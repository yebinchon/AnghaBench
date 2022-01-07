
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct twl4030_madc_data {int dev; } ;


 int TWL4030_MODULE_MADC ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_read_u16 (int ,int*,int ) ;

__attribute__((used)) static int twl4030_madc_channel_raw_read(struct twl4030_madc_data *madc, u8 reg)
{
 u16 val;
 int ret;




 ret = twl_i2c_read_u16(TWL4030_MODULE_MADC, &val, reg);
 if (ret) {
  dev_err(madc->dev, "unable to read register 0x%X\n", reg);
  return ret;
 }

 return (int)(val >> 6);
}
