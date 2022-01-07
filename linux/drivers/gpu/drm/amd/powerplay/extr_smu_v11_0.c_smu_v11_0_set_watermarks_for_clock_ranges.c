
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_table {void* cpu_addr; } ;
struct TYPE_2__ {struct smu_table* tables; } ;
struct smu_context {int watermarks_bitmap; int disable_watermark; TYPE_1__ smu_table; } ;
struct dm_pp_wm_sets_with_clock_ranges_soc15 {int dummy; } ;


 int SMU_FEATURE_DPM_DCEFCLK_BIT ;
 int SMU_FEATURE_DPM_SOCCLK_BIT ;
 size_t SMU_TABLE_WATERMARKS ;
 int WATERMARKS_EXIST ;
 int WATERMARKS_LOADED ;
 scalar_t__ smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_set_watermarks_table (struct smu_context*,void*,struct dm_pp_wm_sets_with_clock_ranges_soc15*) ;

__attribute__((used)) static int
smu_v11_0_set_watermarks_for_clock_ranges(struct smu_context *smu, struct
       dm_pp_wm_sets_with_clock_ranges_soc15
       *clock_ranges)
{
 int ret = 0;
 struct smu_table *watermarks = &smu->smu_table.tables[SMU_TABLE_WATERMARKS];
 void *table = watermarks->cpu_addr;

 if (!smu->disable_watermark &&
     smu_feature_is_enabled(smu, SMU_FEATURE_DPM_DCEFCLK_BIT) &&
     smu_feature_is_enabled(smu, SMU_FEATURE_DPM_SOCCLK_BIT)) {
  smu_set_watermarks_table(smu, table, clock_ranges);
  smu->watermarks_bitmap |= WATERMARKS_EXIST;
  smu->watermarks_bitmap &= ~WATERMARKS_LOADED;
 }

 return ret;
}
