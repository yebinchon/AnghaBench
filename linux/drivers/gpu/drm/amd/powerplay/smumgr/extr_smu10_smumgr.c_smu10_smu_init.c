
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* entry; } ;
struct smu10_smumgr {TYPE_2__ smu_tables; } ;
struct pp_hwmgr {scalar_t__ adev; struct smu10_smumgr* smu_backend; } ;
struct amdgpu_device {int dummy; } ;
typedef int Watermarks_t ;
struct TYPE_3__ {int version; int size; int table; int mc_addr; int handle; int table_id; } ;
typedef int DpmClocks_t ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 size_t SMU10_CLOCKTABLE ;
 size_t SMU10_WMTABLE ;
 int TABLE_DPMCLOCKS ;
 int TABLE_WATERMARKS ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int *,int *,int *) ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int kfree (struct smu10_smumgr*) ;
 struct smu10_smumgr* kzalloc (int,int ) ;

__attribute__((used)) static int smu10_smu_init(struct pp_hwmgr *hwmgr)
{
 struct smu10_smumgr *priv;
 int r;

 priv = kzalloc(sizeof(struct smu10_smumgr), GFP_KERNEL);

 if (!priv)
  return -ENOMEM;

 hwmgr->smu_backend = priv;


 r = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(Watermarks_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[SMU10_WMTABLE].handle,
   &priv->smu_tables.entry[SMU10_WMTABLE].mc_addr,
   &priv->smu_tables.entry[SMU10_WMTABLE].table);

 if (r)
  goto err0;

 priv->smu_tables.entry[SMU10_WMTABLE].version = 0x01;
 priv->smu_tables.entry[SMU10_WMTABLE].size = sizeof(Watermarks_t);
 priv->smu_tables.entry[SMU10_WMTABLE].table_id = TABLE_WATERMARKS;


 r = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(DpmClocks_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[SMU10_CLOCKTABLE].handle,
   &priv->smu_tables.entry[SMU10_CLOCKTABLE].mc_addr,
   &priv->smu_tables.entry[SMU10_CLOCKTABLE].table);

 if (r)
  goto err1;

 priv->smu_tables.entry[SMU10_CLOCKTABLE].version = 0x01;
 priv->smu_tables.entry[SMU10_CLOCKTABLE].size = sizeof(DpmClocks_t);
 priv->smu_tables.entry[SMU10_CLOCKTABLE].table_id = TABLE_DPMCLOCKS;

 return 0;

err1:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[SMU10_WMTABLE].handle,
    &priv->smu_tables.entry[SMU10_WMTABLE].mc_addr,
    &priv->smu_tables.entry[SMU10_WMTABLE].table);
err0:
 kfree(priv);
 return -EINVAL;
}
