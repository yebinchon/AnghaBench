
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rpr0521_data {int als_ps_need_en; int als_need_dis; int pxs_ps_need_en; int pxs_need_dis; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int RPR0521_MODE_ALS_ENABLE ;
 int RPR0521_MODE_ALS_MASK ;
 int RPR0521_MODE_PXS_ENABLE ;
 int RPR0521_MODE_PXS_MASK ;
 int dev_err (int *,char*,int,int) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int rpr0521_als_enable (struct rpr0521_data*,int ) ;
 int rpr0521_pxs_enable (struct rpr0521_data*,int ) ;

__attribute__((used)) static int rpr0521_set_power_state(struct rpr0521_data *data, bool on,
       u8 device_mask)
{
 return 0;
}
