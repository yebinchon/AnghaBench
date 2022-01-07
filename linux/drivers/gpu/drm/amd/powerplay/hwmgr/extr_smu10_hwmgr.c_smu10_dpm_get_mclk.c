
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_3__* vdd_dep_on_fclk; } ;
struct smu10_hwmgr {TYPE_2__ clock_vol_info; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_6__ {int count; TYPE_1__* entries; } ;
struct TYPE_4__ {int clk; } ;


 int EINVAL ;

__attribute__((used)) static uint32_t smu10_dpm_get_mclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct smu10_hwmgr *data;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (low)
  return data->clock_vol_info.vdd_dep_on_fclk->entries[0].clk;
 else
  return data->clock_vol_info.vdd_dep_on_fclk->entries[
   data->clock_vol_info.vdd_dep_on_fclk->count - 1].clk;
}
