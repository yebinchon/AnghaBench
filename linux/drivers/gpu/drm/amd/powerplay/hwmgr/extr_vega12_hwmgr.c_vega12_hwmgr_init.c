
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * pptable_func; int * hwmgr_func; } ;


 int vega12_hwmgr_funcs ;
 int vega12_pptable_funcs ;

int vega12_hwmgr_init(struct pp_hwmgr *hwmgr)
{
 hwmgr->hwmgr_func = &vega12_hwmgr_funcs;
 hwmgr->pptable_func = &vega12_pptable_funcs;

 return 0;
}
