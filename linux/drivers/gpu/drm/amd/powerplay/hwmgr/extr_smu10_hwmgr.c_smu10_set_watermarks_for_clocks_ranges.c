
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct smu10_hwmgr {int water_marks_exist; int water_marks_table; } ;
struct pp_hwmgr {struct smu10_hwmgr* backend; } ;
struct dm_pp_wm_sets_with_clock_ranges_soc15 {int dummy; } ;
typedef int Watermarks_t ;


 scalar_t__ SMU10_WMTABLE ;
 int smu_set_watermarks_for_clocks_ranges (int *,struct dm_pp_wm_sets_with_clock_ranges_soc15*) ;
 int smum_smc_table_manager (struct pp_hwmgr*,int *,int ,int) ;

__attribute__((used)) static int smu10_set_watermarks_for_clocks_ranges(struct pp_hwmgr *hwmgr,
  void *clock_ranges)
{
 struct smu10_hwmgr *data = hwmgr->backend;
 struct dm_pp_wm_sets_with_clock_ranges_soc15 *wm_with_clock_ranges = clock_ranges;
 Watermarks_t *table = &(data->water_marks_table);
 int result = 0;

 smu_set_watermarks_for_clocks_ranges(table,wm_with_clock_ranges);
 smum_smc_table_manager(hwmgr, (uint8_t *)table, (uint16_t)SMU10_WMTABLE, 0);
 data->water_marks_exist = 1;
 return result;
}
