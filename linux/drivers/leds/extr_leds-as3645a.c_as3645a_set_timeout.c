
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int voltage_reference; } ;
struct as3645a {int timeout; int indicator_current; TYPE_1__ cfg; } ;


 int AS_INDICATOR_AND_TIMER_INDICATOR_SHIFT ;
 int AS_INDICATOR_AND_TIMER_REG ;
 int AS_INDICATOR_AND_TIMER_TIMEOUT_SHIFT ;
 int AS_INDICATOR_AND_TIMER_VREF_SHIFT ;
 int as3645a_write (struct as3645a*,int ,int) ;

__attribute__((used)) static int as3645a_set_timeout(struct as3645a *flash)
{
 u8 val;

 val = flash->timeout << AS_INDICATOR_AND_TIMER_TIMEOUT_SHIFT;

 val |= (flash->cfg.voltage_reference
  << AS_INDICATOR_AND_TIMER_VREF_SHIFT)
     | ((flash->indicator_current ? flash->indicator_current - 1 : 0)
   << AS_INDICATOR_AND_TIMER_INDICATOR_SHIFT);

 return as3645a_write(flash, AS_INDICATOR_AND_TIMER_REG, val);
}
