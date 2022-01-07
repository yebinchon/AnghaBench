
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct wiimote_data {TYPE_1__ battery_desc; int battery; } ;
struct wiimod_ops {int dummy; } ;


 int kfree (int *) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static void wiimod_battery_remove(const struct wiimod_ops *ops,
      struct wiimote_data *wdata)
{
 if (!wdata->battery_desc.name)
  return;

 power_supply_unregister(wdata->battery);
 kfree(wdata->battery_desc.name);
 wdata->battery_desc.name = ((void*)0);
}
