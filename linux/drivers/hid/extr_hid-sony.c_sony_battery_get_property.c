
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct sony_sc {int battery_charging; int battery_capacity; int cable_state; int lock; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;




 int POWER_SUPPLY_SCOPE_DEVICE ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 struct sony_sc* power_supply_get_drvdata (struct power_supply*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sony_battery_get_property(struct power_supply *psy,
         enum power_supply_property psp,
         union power_supply_propval *val)
{
 struct sony_sc *sc = power_supply_get_drvdata(psy);
 unsigned long flags;
 int ret = 0;
 u8 battery_charging, battery_capacity, cable_state;

 spin_lock_irqsave(&sc->lock, flags);
 battery_charging = sc->battery_charging;
 battery_capacity = sc->battery_capacity;
 cable_state = sc->cable_state;
 spin_unlock_irqrestore(&sc->lock, flags);

 switch (psp) {
 case 130:
  val->intval = 1;
  break;
 case 129:
  val->intval = POWER_SUPPLY_SCOPE_DEVICE;
  break;
 case 131:
  val->intval = battery_capacity;
  break;
 case 128:
  if (battery_charging)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   if (battery_capacity == 100 && cable_state)
    val->intval = POWER_SUPPLY_STATUS_FULL;
   else
    val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
