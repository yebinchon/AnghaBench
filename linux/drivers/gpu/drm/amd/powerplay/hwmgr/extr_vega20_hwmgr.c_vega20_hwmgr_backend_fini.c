
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * backend; } ;


 int kfree (int *) ;

__attribute__((used)) static int vega20_hwmgr_backend_fini(struct pp_hwmgr *hwmgr)
{
 kfree(hwmgr->backend);
 hwmgr->backend = ((void*)0);

 return 0;
}
