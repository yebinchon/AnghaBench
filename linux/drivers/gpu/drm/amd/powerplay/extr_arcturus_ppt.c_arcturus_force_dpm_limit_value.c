
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
struct arcturus_dpm_table {TYPE_4__ soc_table; TYPE_4__ mem_table; TYPE_4__ gfx_table; } ;
struct TYPE_8__ {int value; } ;


 size_t arcturus_find_highest_dpm_level (TYPE_4__*) ;
 size_t arcturus_find_lowest_dpm_level (TYPE_4__*) ;
 int arcturus_upload_dpm_level (struct smu_context*,int,int) ;
 int pr_err (char*,char*) ;

__attribute__((used)) static int arcturus_force_dpm_limit_value(struct smu_context *smu, bool highest)
{
 struct arcturus_dpm_table *dpm_table =
  (struct arcturus_dpm_table *)smu->smu_dpm.dpm_context;
 uint32_t soft_level;
 int ret = 0;


 if (highest)
  soft_level = arcturus_find_highest_dpm_level(&(dpm_table->gfx_table));
 else
  soft_level = arcturus_find_lowest_dpm_level(&(dpm_table->gfx_table));

 dpm_table->gfx_table.dpm_state.soft_min_level =
  dpm_table->gfx_table.dpm_state.soft_max_level =
  dpm_table->gfx_table.dpm_levels[soft_level].value;


 if (highest)
  soft_level = arcturus_find_highest_dpm_level(&(dpm_table->mem_table));
 else
  soft_level = arcturus_find_lowest_dpm_level(&(dpm_table->mem_table));

 dpm_table->mem_table.dpm_state.soft_min_level =
  dpm_table->mem_table.dpm_state.soft_max_level =
  dpm_table->mem_table.dpm_levels[soft_level].value;


 if (highest)
  soft_level = arcturus_find_highest_dpm_level(&(dpm_table->soc_table));
 else
  soft_level = arcturus_find_lowest_dpm_level(&(dpm_table->soc_table));

 dpm_table->soc_table.dpm_state.soft_min_level =
  dpm_table->soc_table.dpm_state.soft_max_level =
  dpm_table->soc_table.dpm_levels[soft_level].value;

 ret = arcturus_upload_dpm_level(smu, 0, 0xFFFFFFFF);
 if (ret) {
  pr_err("Failed to upload boot level to %s!\n",
    highest ? "highest" : "lowest");
  return ret;
 }

 ret = arcturus_upload_dpm_level(smu, 1, 0xFFFFFFFF);
 if (ret) {
  pr_err("Failed to upload dpm max level to %s!\n!",
    highest ? "highest" : "lowest");
  return ret;
 }

 return ret;
}
