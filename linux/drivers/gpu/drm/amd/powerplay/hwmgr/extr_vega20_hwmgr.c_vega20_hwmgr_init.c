
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * pptable_func; int * hwmgr_func; } ;


 int vega20_hwmgr_funcs ;
 int vega20_pptable_funcs ;

int vega20_hwmgr_init(struct pp_hwmgr *hwmgr)
{
 hwmgr->hwmgr_func = &vega20_hwmgr_funcs;
 hwmgr->pptable_func = &vega20_pptable_funcs;

 return 0;
}
