
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct led_classdev_flash {int dummy; } ;
struct as3645a {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int AS_FAULT_INFO_INDICATOR_LED ;
 int AS_FAULT_INFO_INDUCTOR_PEAK_LIMIT ;
 int AS_FAULT_INFO_LED_AMOUNT ;
 int AS_FAULT_INFO_OVER_TEMPERATURE ;
 int AS_FAULT_INFO_OVER_VOLTAGE ;
 int AS_FAULT_INFO_REG ;
 int AS_FAULT_INFO_SHORT_CIRCUIT ;
 int AS_FAULT_INFO_TIMEOUT ;
 int LED_FAULT_INDICATOR ;
 int LED_FAULT_INPUT_VOLTAGE ;
 int LED_FAULT_OVER_CURRENT ;
 int LED_FAULT_OVER_TEMPERATURE ;
 int LED_FAULT_TIMEOUT ;
 int as3645a_read (struct as3645a*,int ) ;
 int dev_dbg (int *,char*,int) ;
 struct as3645a* fled_to_as3645a (struct led_classdev_flash*) ;

__attribute__((used)) static int as3645a_get_fault(struct led_classdev_flash *fled, u32 *fault)
{
 struct as3645a *flash = fled_to_as3645a(fled);
 int rval;


 rval = as3645a_read(flash, AS_FAULT_INFO_REG);
 if (rval < 0)
  return rval;

 if (rval & AS_FAULT_INFO_INDUCTOR_PEAK_LIMIT)
  *fault |= LED_FAULT_OVER_CURRENT;

 if (rval & AS_FAULT_INFO_INDICATOR_LED)
  *fault |= LED_FAULT_INDICATOR;

 dev_dbg(&flash->client->dev, "%u connected LEDs\n",
  rval & AS_FAULT_INFO_LED_AMOUNT ? 2 : 1);

 if (rval & AS_FAULT_INFO_TIMEOUT)
  *fault |= LED_FAULT_TIMEOUT;

 if (rval & AS_FAULT_INFO_OVER_TEMPERATURE)
  *fault |= LED_FAULT_OVER_TEMPERATURE;

 if (rval & AS_FAULT_INFO_SHORT_CIRCUIT)
  *fault |= LED_FAULT_OVER_CURRENT;

 if (rval & AS_FAULT_INFO_OVER_VOLTAGE)
  *fault |= LED_FAULT_INPUT_VOLTAGE;

 return rval;
}
