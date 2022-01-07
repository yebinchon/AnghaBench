
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmc150_magn_data {int dev; } ;


 int dev_err (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int bmc150_magn_set_power_state(struct bmc150_magn_data *data, bool on)
{
 return 0;
}
