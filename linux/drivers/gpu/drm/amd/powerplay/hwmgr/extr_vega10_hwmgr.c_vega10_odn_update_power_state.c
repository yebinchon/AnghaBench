
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vega10_single_dpm_table {int count; TYPE_3__* dpm_levels; } ;
struct vega10_power_state {int performance_level_count; TYPE_2__* performance_levels; } ;
struct TYPE_4__ {struct vega10_single_dpm_table mem_table; struct vega10_single_dpm_table soc_table; struct vega10_single_dpm_table gfx_table; } ;
struct vega10_hwmgr {TYPE_1__ dpm_table; } ;
struct pp_power_state {int hardware; } ;
struct pp_hwmgr {int ps_size; int num_ps; scalar_t__ ps; struct pp_power_state* request_ps; struct vega10_hwmgr* backend; } ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ gfx_clock; scalar_t__ soc_clock; scalar_t__ mem_clock; } ;


 struct vega10_power_state* cast_phw_vega10_power_state (int *) ;

__attribute__((used)) static void vega10_odn_update_power_state(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct pp_power_state *ps = hwmgr->request_ps;
 struct vega10_power_state *vega10_ps;
 struct vega10_single_dpm_table *gfx_dpm_table =
  &data->dpm_table.gfx_table;
 struct vega10_single_dpm_table *soc_dpm_table =
  &data->dpm_table.soc_table;
 struct vega10_single_dpm_table *mem_dpm_table =
  &data->dpm_table.mem_table;
 int max_level;

 if (!ps)
  return;

 vega10_ps = cast_phw_vega10_power_state(&ps->hardware);
 max_level = vega10_ps->performance_level_count - 1;

 if (vega10_ps->performance_levels[max_level].gfx_clock !=
     gfx_dpm_table->dpm_levels[gfx_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].gfx_clock =
   gfx_dpm_table->dpm_levels[gfx_dpm_table->count - 1].value;

 if (vega10_ps->performance_levels[max_level].soc_clock !=
     soc_dpm_table->dpm_levels[soc_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].soc_clock =
   soc_dpm_table->dpm_levels[soc_dpm_table->count - 1].value;

 if (vega10_ps->performance_levels[max_level].mem_clock !=
     mem_dpm_table->dpm_levels[mem_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].mem_clock =
   mem_dpm_table->dpm_levels[mem_dpm_table->count - 1].value;

 if (!hwmgr->ps)
  return;

 ps = (struct pp_power_state *)((unsigned long)(hwmgr->ps) + hwmgr->ps_size * (hwmgr->num_ps - 1));
 vega10_ps = cast_phw_vega10_power_state(&ps->hardware);
 max_level = vega10_ps->performance_level_count - 1;

 if (vega10_ps->performance_levels[max_level].gfx_clock !=
     gfx_dpm_table->dpm_levels[gfx_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].gfx_clock =
   gfx_dpm_table->dpm_levels[gfx_dpm_table->count - 1].value;

 if (vega10_ps->performance_levels[max_level].soc_clock !=
     soc_dpm_table->dpm_levels[soc_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].soc_clock =
   soc_dpm_table->dpm_levels[soc_dpm_table->count - 1].value;

 if (vega10_ps->performance_levels[max_level].mem_clock !=
     mem_dpm_table->dpm_levels[mem_dpm_table->count - 1].value)
  vega10_ps->performance_levels[max_level].mem_clock =
   mem_dpm_table->dpm_levels[mem_dpm_table->count - 1].value;
}
