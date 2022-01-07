
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct steam_device {int lock; int battery_charge; int voltage; int battery; } ;
struct power_supply {int dummy; } ;
typedef int s16 ;


 scalar_t__ likely (struct power_supply*) ;
 int power_supply_changed (struct power_supply*) ;
 struct power_supply* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int steam_le16 (int *) ;

__attribute__((used)) static void steam_do_battery_event(struct steam_device *steam,
  struct power_supply *battery, u8 *data)
{
 unsigned long flags;

 s16 volts = steam_le16(data + 12);
 u8 batt = data[14];


 rcu_read_lock();
 battery = rcu_dereference(steam->battery);
 if (likely(battery)) {
  spin_lock_irqsave(&steam->lock, flags);
  steam->voltage = volts;
  steam->battery_charge = batt;
  spin_unlock_irqrestore(&steam->lock, flags);
  power_supply_changed(battery);
 }
 rcu_read_unlock();
}
