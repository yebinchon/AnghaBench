
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int battery; } ;
struct power_supply {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int power_supply_unregister (struct power_supply*) ;
 struct power_supply* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int synchronize_rcu () ;

__attribute__((used)) static void steam_battery_unregister(struct steam_device *steam)
{
 struct power_supply *battery;

 rcu_read_lock();
 battery = rcu_dereference(steam->battery);
 rcu_read_unlock();

 if (!battery)
  return;
 RCU_INIT_POINTER(steam->battery, ((void*)0));
 synchronize_rcu();
 power_supply_unregister(battery);
}
