
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev_flash {int dummy; } ;
struct as3645a {int flash_current; } ;


 int as3645a_current_to_reg (struct as3645a*,int,int ) ;
 int as3645a_set_current (struct as3645a*) ;
 struct as3645a* fled_to_as3645a (struct led_classdev_flash*) ;

__attribute__((used)) static int as3645a_set_flash_brightness(struct led_classdev_flash *fled,
     u32 brightness_ua)
{
 struct as3645a *flash = fled_to_as3645a(fled);

 flash->flash_current = as3645a_current_to_reg(flash, 1,
            brightness_ua);

 return as3645a_set_current(flash);
}
