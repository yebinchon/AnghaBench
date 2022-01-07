
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * smu_backend; } ;


 int kfree (int *) ;

__attribute__((used)) static int ci_smu_fini(struct pp_hwmgr *hwmgr)
{
 kfree(hwmgr->smu_backend);
 hwmgr->smu_backend = ((void*)0);
 return 0;
}
