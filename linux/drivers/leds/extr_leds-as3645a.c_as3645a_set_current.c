
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct as3645a {int flash_current; int assist_current; } ;


 int AS_CURRENT_ASSIST_LIGHT_SHIFT ;
 int AS_CURRENT_FLASH_CURRENT_SHIFT ;
 int AS_CURRENT_LED_DET_ON ;
 int AS_CURRENT_SET_REG ;
 int as3645a_write (struct as3645a*,int ,int) ;

__attribute__((used)) static int as3645a_set_current(struct as3645a *flash)
{
 u8 val;

 val = (flash->flash_current << AS_CURRENT_FLASH_CURRENT_SHIFT)
     | (flash->assist_current << AS_CURRENT_ASSIST_LIGHT_SHIFT)
     | AS_CURRENT_LED_DET_ON;

 return as3645a_write(flash, AS_CURRENT_SET_REG, val);
}
