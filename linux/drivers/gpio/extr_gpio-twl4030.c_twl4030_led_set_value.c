
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LEDEN_LEDAON ;
 int LEDEN_LEDAPWM ;
 int TWL4030_LED_LEDEN_REG ;
 int TWL4030_MODULE_LED ;
 int WARN_ON_ONCE (int ) ;
 int cached_leden ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static void twl4030_led_set_value(int led, int value)
{
 u8 mask = LEDEN_LEDAON | LEDEN_LEDAPWM;

 if (led)
  mask <<= 1;

 if (value)
  cached_leden &= ~mask;
 else
  cached_leden |= mask;

 WARN_ON_ONCE(twl_i2c_write_u8(TWL4030_MODULE_LED, cached_leden,
          TWL4030_LED_LEDEN_REG));
}
