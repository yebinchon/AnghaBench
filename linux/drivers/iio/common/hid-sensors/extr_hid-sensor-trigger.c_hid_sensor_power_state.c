
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_sensor_common {int user_requested_state; TYPE_1__* pdev; int runtime_pm_enable; } ;
struct TYPE_2__ {int dev; } ;


 int _hid_sensor_power_state (struct hid_sensor_common*,int) ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_use_autosuspend (int *) ;

int hid_sensor_power_state(struct hid_sensor_common *st, bool state)
{
 atomic_set(&st->user_requested_state, state);
 return _hid_sensor_power_state(st, state);

}
