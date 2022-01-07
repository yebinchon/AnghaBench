
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* entry; } ;
struct vega20_smumgr {TYPE_1__ smu_tables; } ;
struct pp_hwmgr {struct vega20_smumgr* smu_backend; scalar_t__ adev; int device; } ;
struct cgs_firmware_info {int kptr; int member_0; } ;
struct amdgpu_device {int dummy; } ;
typedef int Watermarks_t ;
struct TYPE_4__ {int version; int size; int table; int mc_addr; int handle; } ;
typedef int SmuMetrics_t ;
typedef int PPTable_t ;
typedef int OverDriveTable_t ;
typedef int DpmActivityMonitorCoeffInt_t ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 size_t TABLE_ACTIVITY_MONITOR_COEFF ;
 size_t TABLE_OVERDRIVE ;
 size_t TABLE_PMSTATUSLOG ;
 size_t TABLE_PPTABLE ;
 size_t TABLE_SMU_METRICS ;
 size_t TABLE_WATERMARKS ;
 int UCODE_ID_SMU ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int *,int *,int *) ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int cgs_get_firmware_info (int ,int ,struct cgs_firmware_info*) ;
 int kfree (struct vega20_smumgr*) ;
 struct vega20_smumgr* kzalloc (int,int ) ;
 int smu7_convert_fw_type_to_cgs (int ) ;

__attribute__((used)) static int vega20_smu_init(struct pp_hwmgr *hwmgr)
{
 struct vega20_smumgr *priv;
 unsigned long tools_size = 0x19000;
 int ret = 0;

 struct cgs_firmware_info info = {0};

 ret = cgs_get_firmware_info(hwmgr->device,
    smu7_convert_fw_type_to_cgs(UCODE_ID_SMU),
    &info);
 if (ret || !info.kptr)
  return -EINVAL;

 priv = kzalloc(sizeof(struct vega20_smumgr), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 hwmgr->smu_backend = priv;


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(PPTable_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_PPTABLE].handle,
   &priv->smu_tables.entry[TABLE_PPTABLE].mc_addr,
   &priv->smu_tables.entry[TABLE_PPTABLE].table);
 if (ret)
  goto free_backend;

 priv->smu_tables.entry[TABLE_PPTABLE].version = 0x01;
 priv->smu_tables.entry[TABLE_PPTABLE].size = sizeof(PPTable_t);


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(Watermarks_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_WATERMARKS].handle,
   &priv->smu_tables.entry[TABLE_WATERMARKS].mc_addr,
   &priv->smu_tables.entry[TABLE_WATERMARKS].table);
 if (ret)
  goto err0;

 priv->smu_tables.entry[TABLE_WATERMARKS].version = 0x01;
 priv->smu_tables.entry[TABLE_WATERMARKS].size = sizeof(Watermarks_t);


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   tools_size,
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_PMSTATUSLOG].handle,
   &priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr,
   &priv->smu_tables.entry[TABLE_PMSTATUSLOG].table);
 if (ret)
  goto err1;

 priv->smu_tables.entry[TABLE_PMSTATUSLOG].version = 0x01;
 priv->smu_tables.entry[TABLE_PMSTATUSLOG].size = tools_size;


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(OverDriveTable_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_OVERDRIVE].handle,
   &priv->smu_tables.entry[TABLE_OVERDRIVE].mc_addr,
   &priv->smu_tables.entry[TABLE_OVERDRIVE].table);
 if (ret)
  goto err2;

 priv->smu_tables.entry[TABLE_OVERDRIVE].version = 0x01;
 priv->smu_tables.entry[TABLE_OVERDRIVE].size = sizeof(OverDriveTable_t);


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(SmuMetrics_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_SMU_METRICS].handle,
   &priv->smu_tables.entry[TABLE_SMU_METRICS].mc_addr,
   &priv->smu_tables.entry[TABLE_SMU_METRICS].table);
 if (ret)
  goto err3;

 priv->smu_tables.entry[TABLE_SMU_METRICS].version = 0x01;
 priv->smu_tables.entry[TABLE_SMU_METRICS].size = sizeof(SmuMetrics_t);


 ret = amdgpu_bo_create_kernel((struct amdgpu_device *)hwmgr->adev,
   sizeof(DpmActivityMonitorCoeffInt_t),
   PAGE_SIZE,
   AMDGPU_GEM_DOMAIN_VRAM,
   &priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].handle,
   &priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].mc_addr,
   &priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].table);
 if (ret)
  goto err4;

 priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].version = 0x01;
 priv->smu_tables.entry[TABLE_ACTIVITY_MONITOR_COEFF].size = sizeof(DpmActivityMonitorCoeffInt_t);

 return 0;

err4:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_SMU_METRICS].handle,
   &priv->smu_tables.entry[TABLE_SMU_METRICS].mc_addr,
   &priv->smu_tables.entry[TABLE_SMU_METRICS].table);
err3:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_OVERDRIVE].handle,
   &priv->smu_tables.entry[TABLE_OVERDRIVE].mc_addr,
   &priv->smu_tables.entry[TABLE_OVERDRIVE].table);
err2:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_PMSTATUSLOG].handle,
   &priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr,
   &priv->smu_tables.entry[TABLE_PMSTATUSLOG].table);
err1:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_WATERMARKS].handle,
   &priv->smu_tables.entry[TABLE_WATERMARKS].mc_addr,
   &priv->smu_tables.entry[TABLE_WATERMARKS].table);
err0:
 amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_PPTABLE].handle,
   &priv->smu_tables.entry[TABLE_PPTABLE].mc_addr,
   &priv->smu_tables.entry[TABLE_PPTABLE].table);
free_backend:
 kfree(hwmgr->smu_backend);

 return -EINVAL;
}
