
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int dummy; } ;
struct as3645a {int dummy; } ;


 int AS_MODE_FLASH ;
 int as3645a_set_control (struct as3645a*,int ,int) ;
 struct as3645a* fled_to_as3645a (struct led_classdev_flash*) ;

__attribute__((used)) static int as3645a_set_strobe(struct led_classdev_flash *fled, bool state)
{
 struct as3645a *flash = fled_to_as3645a(fled);

 return as3645a_set_control(flash, AS_MODE_FLASH, state);
}
