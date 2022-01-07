
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * pptable_func; int * hwmgr_func; } ;


 int pptable_funcs ;
 int smu8_hwmgr_funcs ;

int smu8_init_function_pointers(struct pp_hwmgr *hwmgr)
{
 hwmgr->hwmgr_func = &smu8_hwmgr_funcs;
 hwmgr->pptable_func = &pptable_funcs;
 return 0;
}
