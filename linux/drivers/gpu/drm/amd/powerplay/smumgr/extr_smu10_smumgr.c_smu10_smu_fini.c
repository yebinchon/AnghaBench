
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* entry; } ;
struct smu10_smumgr {TYPE_2__ smu_tables; } ;
struct pp_hwmgr {int * smu_backend; } ;
struct TYPE_3__ {int table; int mc_addr; int handle; } ;


 size_t SMU10_CLOCKTABLE ;
 size_t SMU10_WMTABLE ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int kfree (int *) ;

__attribute__((used)) static int smu10_smu_fini(struct pp_hwmgr *hwmgr)
{
 struct smu10_smumgr *priv =
   (struct smu10_smumgr *)(hwmgr->smu_backend);

 if (priv) {
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[SMU10_WMTABLE].handle,
     &priv->smu_tables.entry[SMU10_WMTABLE].mc_addr,
     &priv->smu_tables.entry[SMU10_WMTABLE].table);
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[SMU10_CLOCKTABLE].handle,
     &priv->smu_tables.entry[SMU10_CLOCKTABLE].mc_addr,
     &priv->smu_tables.entry[SMU10_CLOCKTABLE].table);
  kfree(hwmgr->smu_backend);
  hwmgr->smu_backend = ((void*)0);
 }

 return 0;
}
