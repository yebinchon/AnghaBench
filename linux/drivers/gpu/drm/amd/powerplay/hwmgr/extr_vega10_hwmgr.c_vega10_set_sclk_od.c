
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_single_dpm_table {int count; TYPE_2__* dpm_levels; } ;
struct vega10_power_state {int performance_level_count; TYPE_3__* performance_levels; } ;
struct TYPE_6__ {struct vega10_single_dpm_table gfx_table; } ;
struct vega10_hwmgr {TYPE_1__ golden_dpm_table; } ;
struct pp_power_state {int hardware; } ;
struct TYPE_9__ {int engineClock; } ;
struct TYPE_10__ {TYPE_4__ overdriveLimit; } ;
struct pp_hwmgr {TYPE_5__ platform_descriptor; struct pp_power_state* request_ps; struct vega10_hwmgr* backend; } ;
struct TYPE_8__ {int gfx_clock; } ;
struct TYPE_7__ {int value; } ;


 int EINVAL ;
 struct vega10_power_state* cast_phw_vega10_power_state (int *) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int vega10_set_sclk_od(struct pp_hwmgr *hwmgr, uint32_t value)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct vega10_single_dpm_table *golden_sclk_table =
   &(data->golden_dpm_table.gfx_table);
 struct pp_power_state *ps;
 struct vega10_power_state *vega10_ps;

 ps = hwmgr->request_ps;

 if (ps == ((void*)0))
  return -EINVAL;

 vega10_ps = cast_phw_vega10_power_state(&ps->hardware);

 vega10_ps->performance_levels
 [vega10_ps->performance_level_count - 1].gfx_clock =
   golden_sclk_table->dpm_levels
   [golden_sclk_table->count - 1].value *
   value / 100 +
   golden_sclk_table->dpm_levels
   [golden_sclk_table->count - 1].value;

 if (vega10_ps->performance_levels
   [vega10_ps->performance_level_count - 1].gfx_clock >
   hwmgr->platform_descriptor.overdriveLimit.engineClock) {
  vega10_ps->performance_levels
  [vega10_ps->performance_level_count - 1].gfx_clock =
    hwmgr->platform_descriptor.overdriveLimit.engineClock;
  pr_warn("max sclk supported by vbios is %d\n",
    hwmgr->platform_descriptor.overdriveLimit.engineClock);
 }
 return 0;
}
