
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {int acc_ps; int mag_ps; TYPE_1__* client; int acc_stby; int mag_stby; } ;
struct TYPE_2__ {int dev; } ;


 int KMX61_ACC ;
 int KMX61_MAG ;
 int dev_err (int *,char*,int,int) ;
 int kmx61_set_mode (struct kmx61_data*,int ,int,int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int kmx61_set_power_state(struct kmx61_data *data, bool on, u8 device)
{
 return 0;
}
