
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pa12203001_data {int als_needs_enable; int px_needs_enable; int lock; TYPE_1__* client; scalar_t__ als_enabled; scalar_t__ px_enabled; } ;
struct TYPE_2__ {int dev; } ;


 int PA12203001_ALS_EN_MASK ;
 int PA12203001_PX_EN_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pa12203001_als_enable (struct pa12203001_data*,int) ;
 int pa12203001_px_enable (struct pa12203001_data*,int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int pa12203001_set_power_state(struct pa12203001_data *data, bool on,
          u8 mask)
{
 return 0;
}
