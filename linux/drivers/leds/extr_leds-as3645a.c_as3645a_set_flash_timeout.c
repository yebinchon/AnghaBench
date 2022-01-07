
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev_flash {int dummy; } ;
struct as3645a {int timeout; } ;


 int AS_TIMER_US_TO_CODE (int ) ;
 int as3645a_set_timeout (struct as3645a*) ;
 struct as3645a* fled_to_as3645a (struct led_classdev_flash*) ;

__attribute__((used)) static int as3645a_set_flash_timeout(struct led_classdev_flash *fled,
         u32 timeout_us)
{
 struct as3645a *flash = fled_to_as3645a(fled);

 flash->timeout = AS_TIMER_US_TO_CODE(timeout_us);

 return as3645a_set_timeout(flash);
}
