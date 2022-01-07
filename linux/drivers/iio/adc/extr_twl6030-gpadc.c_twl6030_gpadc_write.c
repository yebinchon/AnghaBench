
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL6030_MODULE_GPADC ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static inline int twl6030_gpadc_write(u8 reg, u8 val)
{
 return twl_i2c_write_u8(TWL6030_MODULE_GPADC, val, reg);
}
