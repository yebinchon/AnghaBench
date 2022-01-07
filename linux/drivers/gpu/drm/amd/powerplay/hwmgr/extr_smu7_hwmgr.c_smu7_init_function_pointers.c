
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ pp_table_version; int * pptable_func; int * hwmgr_func; } ;


 scalar_t__ PP_TABLE_V0 ;
 scalar_t__ PP_TABLE_V1 ;
 int pptable_funcs ;
 int pptable_v1_0_funcs ;
 int smu7_hwmgr_funcs ;

int smu7_init_function_pointers(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 hwmgr->hwmgr_func = &smu7_hwmgr_funcs;
 if (hwmgr->pp_table_version == PP_TABLE_V0)
  hwmgr->pptable_func = &pptable_funcs;
 else if (hwmgr->pp_table_version == PP_TABLE_V1)
  hwmgr->pptable_func = &pptable_v1_0_funcs;

 return ret;
}
