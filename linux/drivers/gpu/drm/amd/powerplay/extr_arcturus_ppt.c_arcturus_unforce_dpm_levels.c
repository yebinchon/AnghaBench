
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ dpm_context; } ;
struct smu_context {TYPE_1__ smu_dpm; } ;
struct TYPE_7__ {int soft_max_level; int soft_min_level; } ;
struct TYPE_9__ {TYPE_3__* dpm_levels; TYPE_2__ dpm_state; } ;
struct arcturus_dpm_table {TYPE_4__ soc_table; TYPE_4__ gfx_table; TYPE_4__ mem_table; } ;
struct TYPE_8__ {int value; } ;


 size_t arcturus_find_highest_dpm_level (TYPE_4__*) ;
 size_t arcturus_find_lowest_dpm_level (TYPE_4__*) ;
 int arcturus_upload_dpm_level (struct smu_context*,int,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int arcturus_unforce_dpm_levels(struct smu_context *smu)
{
 struct arcturus_dpm_table *dpm_table =
  (struct arcturus_dpm_table *)smu->smu_dpm.dpm_context;
 uint32_t soft_min_level, soft_max_level;
 int ret = 0;


 soft_min_level = arcturus_find_lowest_dpm_level(&(dpm_table->gfx_table));
 soft_max_level = arcturus_find_highest_dpm_level(&(dpm_table->gfx_table));
 dpm_table->gfx_table.dpm_state.soft_min_level =
  dpm_table->gfx_table.dpm_levels[soft_min_level].value;
 dpm_table->gfx_table.dpm_state.soft_max_level =
  dpm_table->gfx_table.dpm_levels[soft_max_level].value;


 soft_min_level = arcturus_find_lowest_dpm_level(&(dpm_table->mem_table));
 soft_max_level = arcturus_find_highest_dpm_level(&(dpm_table->mem_table));
 dpm_table->mem_table.dpm_state.soft_min_level =
  dpm_table->gfx_table.dpm_levels[soft_min_level].value;
 dpm_table->mem_table.dpm_state.soft_max_level =
  dpm_table->gfx_table.dpm_levels[soft_max_level].value;


 soft_min_level = arcturus_find_lowest_dpm_level(&(dpm_table->soc_table));
 soft_max_level = arcturus_find_highest_dpm_level(&(dpm_table->soc_table));
 dpm_table->soc_table.dpm_state.soft_min_level =
  dpm_table->soc_table.dpm_levels[soft_min_level].value;
 dpm_table->soc_table.dpm_state.soft_max_level =
  dpm_table->soc_table.dpm_levels[soft_max_level].value;

 ret = arcturus_upload_dpm_level(smu, 0, 0xFFFFFFFF);
 if (ret) {
  pr_err("Failed to upload DPM Bootup Levels!");
  return ret;
 }

 ret = arcturus_upload_dpm_level(smu, 1, 0xFFFFFFFF);
 if (ret) {
  pr_err("Failed to upload DPM Max Levels!");
  return ret;
 }

 return ret;
}
