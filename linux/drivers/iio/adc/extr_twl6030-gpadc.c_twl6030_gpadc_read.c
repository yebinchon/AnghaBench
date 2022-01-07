
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TWL6030_MODULE_GPADC ;
 int twl_i2c_read (int ,int *,int ,int) ;

__attribute__((used)) static inline int twl6030_gpadc_read(u8 reg, u8 *val)
{

 return twl_i2c_read(TWL6030_MODULE_GPADC, val, reg, 2);
}
