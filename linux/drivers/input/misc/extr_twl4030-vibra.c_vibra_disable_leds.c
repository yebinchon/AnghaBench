
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LEDEN ;
 int TWL4030_MODULE_LED ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int ,int) ;

__attribute__((used)) static void vibra_disable_leds(void)
{
 u8 reg;


 twl_i2c_read_u8(TWL4030_MODULE_LED, &reg, LEDEN);
 reg &= ~0x03;
 twl_i2c_write_u8(TWL4030_MODULE_LED, LEDEN, reg);
}
