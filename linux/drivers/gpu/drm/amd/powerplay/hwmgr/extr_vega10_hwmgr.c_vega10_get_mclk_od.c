
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vega10_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct TYPE_6__ {struct vega10_single_dpm_table mem_table; } ;
struct TYPE_5__ {struct vega10_single_dpm_table mem_table; } ;
struct vega10_hwmgr {TYPE_3__ golden_dpm_table; TYPE_2__ dpm_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_4__ {int value; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static int vega10_get_mclk_od(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct vega10_single_dpm_table *mclk_table = &(data->dpm_table.mem_table);
 struct vega10_single_dpm_table *golden_mclk_table =
   &(data->golden_dpm_table.mem_table);
 int value = mclk_table->dpm_levels[mclk_table->count - 1].value;
 int golden_value = golden_mclk_table->dpm_levels
   [golden_mclk_table->count - 1].value;

 value -= golden_value;
 value = DIV_ROUND_UP(value * 100, golden_value);

 return value;
}
