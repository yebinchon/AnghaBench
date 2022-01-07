
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega20_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; } ;
struct smu_dpm_context {struct vega20_dpm_table* dpm_context; } ;
struct smu_context {int pstate_sclk; int pstate_mclk; struct smu_dpm_context smu_dpm; } ;
struct TYPE_2__ {int value; } ;


 size_t VEGA20_UMD_PSTATE_GFXCLK_LEVEL ;
 size_t VEGA20_UMD_PSTATE_MCLK_LEVEL ;

__attribute__((used)) static int vega20_populate_umd_state_clk(struct smu_context *smu)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct vega20_dpm_table *dpm_table = ((void*)0);
 struct vega20_single_dpm_table *gfx_table = ((void*)0);
 struct vega20_single_dpm_table *mem_table = ((void*)0);

 dpm_table = smu_dpm->dpm_context;
 gfx_table = &(dpm_table->gfx_table);
 mem_table = &(dpm_table->mem_table);

 smu->pstate_sclk = gfx_table->dpm_levels[0].value;
 smu->pstate_mclk = mem_table->dpm_levels[0].value;

 if (gfx_table->count > VEGA20_UMD_PSTATE_GFXCLK_LEVEL &&
     mem_table->count > VEGA20_UMD_PSTATE_MCLK_LEVEL) {
  smu->pstate_sclk = gfx_table->dpm_levels[VEGA20_UMD_PSTATE_GFXCLK_LEVEL].value;
  smu->pstate_mclk = mem_table->dpm_levels[VEGA20_UMD_PSTATE_MCLK_LEVEL].value;
 }

 smu->pstate_sclk = smu->pstate_sclk * 100;
 smu->pstate_mclk = smu->pstate_mclk * 100;

 return 0;
}
