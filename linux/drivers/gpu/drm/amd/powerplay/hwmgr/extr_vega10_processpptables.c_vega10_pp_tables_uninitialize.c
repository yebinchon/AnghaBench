
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cac_dtp_table; } ;
struct pp_hwmgr {int * pptable; TYPE_1__ dyn_state; } ;
struct phm_ppt_v2_information {int * tdp_table; int * cac_dtp_table; int * mm_dep_table; int * ppm_parameter_table; int * vddci_lookup_table; int * vddmem_lookup_table; int * vddc_lookup_table; int * valid_sclk_values; int * valid_mclk_values; int * vdd_dep_on_mclk; int * vdd_dep_on_sclk; } ;


 int kfree (int *) ;

__attribute__((used)) static int vega10_pp_tables_uninitialize(struct pp_hwmgr *hwmgr)
{
 struct phm_ppt_v2_information *pp_table_info =
   (struct phm_ppt_v2_information *)(hwmgr->pptable);

 kfree(pp_table_info->vdd_dep_on_sclk);
 pp_table_info->vdd_dep_on_sclk = ((void*)0);

 kfree(pp_table_info->vdd_dep_on_mclk);
 pp_table_info->vdd_dep_on_mclk = ((void*)0);

 kfree(pp_table_info->valid_mclk_values);
 pp_table_info->valid_mclk_values = ((void*)0);

 kfree(pp_table_info->valid_sclk_values);
 pp_table_info->valid_sclk_values = ((void*)0);

 kfree(pp_table_info->vddc_lookup_table);
 pp_table_info->vddc_lookup_table = ((void*)0);

 kfree(pp_table_info->vddmem_lookup_table);
 pp_table_info->vddmem_lookup_table = ((void*)0);

 kfree(pp_table_info->vddci_lookup_table);
 pp_table_info->vddci_lookup_table = ((void*)0);

 kfree(pp_table_info->ppm_parameter_table);
 pp_table_info->ppm_parameter_table = ((void*)0);

 kfree(pp_table_info->mm_dep_table);
 pp_table_info->mm_dep_table = ((void*)0);

 kfree(pp_table_info->cac_dtp_table);
 pp_table_info->cac_dtp_table = ((void*)0);

 kfree(hwmgr->dyn_state.cac_dtp_table);
 hwmgr->dyn_state.cac_dtp_table = ((void*)0);

 kfree(pp_table_info->tdp_table);
 pp_table_info->tdp_table = ((void*)0);

 kfree(hwmgr->pptable);
 hwmgr->pptable = ((void*)0);

 return 0;
}
