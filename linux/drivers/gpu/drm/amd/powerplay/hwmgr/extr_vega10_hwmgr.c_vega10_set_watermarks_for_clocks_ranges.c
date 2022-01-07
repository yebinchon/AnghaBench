
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int disable_water_mark; } ;
struct TYPE_3__ {int water_marks_table; } ;
struct vega10_hwmgr {int water_marks_bitmap; TYPE_2__ registry_data; TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct dm_pp_wm_sets_with_clock_ranges_soc15 {int dummy; } ;
typedef int Watermarks_t ;


 int WaterMarksExist ;
 int smu_set_watermarks_for_clocks_ranges (int *,struct dm_pp_wm_sets_with_clock_ranges_soc15*) ;

__attribute__((used)) static int vega10_set_watermarks_for_clocks_ranges(struct pp_hwmgr *hwmgr,
       void *clock_range)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct dm_pp_wm_sets_with_clock_ranges_soc15 *wm_with_clock_ranges = clock_range;
 Watermarks_t *table = &(data->smc_state_table.water_marks_table);
 int result = 0;

 if (!data->registry_data.disable_water_mark) {
  smu_set_watermarks_for_clocks_ranges(table, wm_with_clock_ranges);
  data->water_marks_bitmap = WaterMarksExist;
 }

 return result;
}
