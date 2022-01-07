
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vega20_single_dpm_table {int count; int dpm_state; TYPE_1__* dpm_levels; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table fclk_table; struct vega20_single_dpm_table phy_table; struct vega20_single_dpm_table display_table; struct vega20_single_dpm_table pixel_table; struct vega20_single_dpm_table dcef_table; struct vega20_single_dpm_table dclk_table; struct vega20_single_dpm_table vclk_table; struct vega20_single_dpm_table eclk_table; struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; struct vega20_single_dpm_table soc_table; } ;
struct smu_dpm_context {int golden_dpm_context; struct vega20_dpm_table* dpm_context; } ;
struct TYPE_5__ {int socclk; int gfxclk; int uclk; int eclk; int vclk; int dclk; int dcefclk; } ;
struct TYPE_6__ {TYPE_2__ boot_values; } ;
struct smu_context {TYPE_3__ smu_table; struct smu_dpm_context smu_dpm; } ;
struct TYPE_4__ {int value; } ;


 int FEATURE_DPM_FCLK_BIT ;
 int PPCLK_DCEFCLK ;
 int PPCLK_DCLK ;
 int PPCLK_DISPCLK ;
 int PPCLK_ECLK ;
 int PPCLK_FCLK ;
 int PPCLK_GFXCLK ;
 int PPCLK_PHYCLK ;
 int PPCLK_PIXCLK ;
 int PPCLK_SOCCLK ;
 int PPCLK_UCLK ;
 int PPCLK_VCLK ;
 int SMU_FEATURE_DPM_DCEFCLK_BIT ;
 int SMU_FEATURE_DPM_GFXCLK_BIT ;
 int SMU_FEATURE_DPM_SOCCLK_BIT ;
 int SMU_FEATURE_DPM_UCLK_BIT ;
 int SMU_FEATURE_DPM_UVD_BIT ;
 int SMU_FEATURE_DPM_VCE_BIT ;
 int memcpy (int ,struct vega20_dpm_table*,int) ;
 int pr_err (char*) ;
 scalar_t__ smu_feature_is_enabled (struct smu_context*,int ) ;
 int vega20_init_single_dpm_state (int *) ;
 int vega20_set_single_dpm_table (struct smu_context*,struct vega20_single_dpm_table*,int ) ;

__attribute__((used)) static int vega20_set_default_dpm_table(struct smu_context *smu)
{
 int ret;

 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct vega20_dpm_table *dpm_table = ((void*)0);
 struct vega20_single_dpm_table *single_dpm_table;

 dpm_table = smu_dpm->dpm_context;


 single_dpm_table = &(dpm_table->soc_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_SOCCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_SOCCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get socclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.socclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->gfx_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_GFXCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_GFXCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get gfxclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.gfxclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->mem_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_UCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get memclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.uclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->eclk_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_VCE_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table, PPCLK_ECLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get eclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.eclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->vclk_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UVD_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table, PPCLK_VCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get vclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.vclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->dclk_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UVD_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table, PPCLK_DCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get dclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.dclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->dcef_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_DCEFCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_DCEFCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get dcefclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 1;
  single_dpm_table->dpm_levels[0].value = smu->smu_table.boot_values.dcefclk / 100;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->pixel_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_DCEFCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_PIXCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get pixclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 0;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->display_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_DCEFCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_DISPCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get dispclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 0;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->phy_table);

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_DCEFCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_PHYCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get phyclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 0;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));


 single_dpm_table = &(dpm_table->fclk_table);

 if (smu_feature_is_enabled(smu,FEATURE_DPM_FCLK_BIT)) {
  ret = vega20_set_single_dpm_table(smu, single_dpm_table,
        PPCLK_FCLK);
  if (ret) {
   pr_err("[SetupDefaultDpmTable] failed to get fclk dpm levels!");
   return ret;
  }
 } else {
  single_dpm_table->count = 0;
 }
 vega20_init_single_dpm_state(&(single_dpm_table->dpm_state));

 memcpy(smu_dpm->golden_dpm_context, dpm_table,
        sizeof(struct vega20_dpm_table));

 return 0;
}
