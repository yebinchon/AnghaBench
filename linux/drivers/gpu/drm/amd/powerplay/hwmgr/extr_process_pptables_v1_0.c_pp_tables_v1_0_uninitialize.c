
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cac_dtp_table; } ;
struct pp_hwmgr {int * pptable; TYPE_1__ dyn_state; } ;
struct phm_ppt_v1_information {int * gpio_table; int * pcie_table; int * ppm_parameter_table; int * cac_dtp_table; int * mm_dep_table; int * vddgfx_lookup_table; int * vddc_lookup_table; int * valid_sclk_values; int * valid_mclk_values; int * vdd_dep_on_mclk; int * vdd_dep_on_sclk; } ;


 int kfree (int *) ;

__attribute__((used)) static int pp_tables_v1_0_uninitialize(struct pp_hwmgr *hwmgr)
{
 struct phm_ppt_v1_information *pp_table_information =
  (struct phm_ppt_v1_information *)(hwmgr->pptable);

 kfree(pp_table_information->vdd_dep_on_sclk);
 pp_table_information->vdd_dep_on_sclk = ((void*)0);

 kfree(pp_table_information->vdd_dep_on_mclk);
 pp_table_information->vdd_dep_on_mclk = ((void*)0);

 kfree(pp_table_information->valid_mclk_values);
 pp_table_information->valid_mclk_values = ((void*)0);

 kfree(pp_table_information->valid_sclk_values);
 pp_table_information->valid_sclk_values = ((void*)0);

 kfree(pp_table_information->vddc_lookup_table);
 pp_table_information->vddc_lookup_table = ((void*)0);

 kfree(pp_table_information->vddgfx_lookup_table);
 pp_table_information->vddgfx_lookup_table = ((void*)0);

 kfree(pp_table_information->mm_dep_table);
 pp_table_information->mm_dep_table = ((void*)0);

 kfree(pp_table_information->cac_dtp_table);
 pp_table_information->cac_dtp_table = ((void*)0);

 kfree(hwmgr->dyn_state.cac_dtp_table);
 hwmgr->dyn_state.cac_dtp_table = ((void*)0);

 kfree(pp_table_information->ppm_parameter_table);
 pp_table_information->ppm_parameter_table = ((void*)0);

 kfree(pp_table_information->pcie_table);
 pp_table_information->pcie_table = ((void*)0);

 kfree(pp_table_information->gpio_table);
 pp_table_information->gpio_table = ((void*)0);

 kfree(hwmgr->pptable);
 hwmgr->pptable = ((void*)0);

 return 0;
}
