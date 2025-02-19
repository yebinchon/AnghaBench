
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int num_physical_nodes; } ;
struct TYPE_14__ {TYPE_6__ xgmi; } ;
struct TYPE_12__ {int csa_obj; } ;
struct amdgpu_device {int num_ip_blocks; TYPE_7__ gmc; int dev; TYPE_5__ virt; TYPE_4__* ip_blocks; } ;
struct TYPE_10__ {int sw; int hw; int valid; } ;
struct TYPE_11__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_8__ {int (* sw_init ) (void*) ;int (* hw_init ) (void*) ;int name; } ;


 int AMDGIM_ERROR_VF_IB_INIT_FAIL ;
 int AMDGPU_CSA_SIZE ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 scalar_t__ AMD_IP_BLOCK_TYPE_GMC ;
 int DRM_ERROR (char*,int,...) ;
 int amdgpu_allocate_static_csa (struct amdgpu_device*,int *,int ,int ) ;
 int amdgpu_amdkfd_device_init (struct amdgpu_device*) ;
 int amdgpu_device_fw_loading (struct amdgpu_device*) ;
 int amdgpu_device_ip_hw_init_phase1 (struct amdgpu_device*) ;
 int amdgpu_device_ip_hw_init_phase2 (struct amdgpu_device*) ;
 int amdgpu_device_vram_scratch_init (struct amdgpu_device*) ;
 int amdgpu_device_wb_init (struct amdgpu_device*) ;
 int amdgpu_ib_pool_init (struct amdgpu_device*) ;
 scalar_t__ amdgpu_mcbp ;
 int amdgpu_ras_init (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_ucode_create_bo (struct amdgpu_device*) ;
 int amdgpu_vf_error_put (struct amdgpu_device*,int ,int ,int) ;
 int amdgpu_virt_init_data_exchange (struct amdgpu_device*) ;
 int amdgpu_virt_release_full_gpu (struct amdgpu_device*,int) ;
 int amdgpu_xgmi_add_device (struct amdgpu_device*) ;
 int dev_err (int ,char*,int) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static int amdgpu_device_ip_init(struct amdgpu_device *adev)
{
 int i, r;

 r = amdgpu_ras_init(adev);
 if (r)
  return r;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.valid)
   continue;
  r = adev->ip_blocks[i].version->funcs->sw_init((void *)adev);
  if (r) {
   DRM_ERROR("sw_init of IP block <%s> failed %d\n",
      adev->ip_blocks[i].version->funcs->name, r);
   goto init_failed;
  }
  adev->ip_blocks[i].status.sw = 1;


  if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_GMC) {
   r = amdgpu_device_vram_scratch_init(adev);
   if (r) {
    DRM_ERROR("amdgpu_vram_scratch_init failed %d\n", r);
    goto init_failed;
   }
   r = adev->ip_blocks[i].version->funcs->hw_init((void *)adev);
   if (r) {
    DRM_ERROR("hw_init %d failed %d\n", i, r);
    goto init_failed;
   }
   r = amdgpu_device_wb_init(adev);
   if (r) {
    DRM_ERROR("amdgpu_device_wb_init failed %d\n", r);
    goto init_failed;
   }
   adev->ip_blocks[i].status.hw = 1;


   if (amdgpu_mcbp || amdgpu_sriov_vf(adev)) {
    r = amdgpu_allocate_static_csa(adev, &adev->virt.csa_obj,
        AMDGPU_GEM_DOMAIN_VRAM,
        AMDGPU_CSA_SIZE);
    if (r) {
     DRM_ERROR("allocate CSA failed %d\n", r);
     goto init_failed;
    }
   }
  }
 }

 r = amdgpu_ib_pool_init(adev);
 if (r) {
  dev_err(adev->dev, "IB initialization failed (%d).\n", r);
  amdgpu_vf_error_put(adev, AMDGIM_ERROR_VF_IB_INIT_FAIL, 0, r);
  goto init_failed;
 }

 r = amdgpu_ucode_create_bo(adev);
 if (r)
  goto init_failed;

 r = amdgpu_device_ip_hw_init_phase1(adev);
 if (r)
  goto init_failed;

 r = amdgpu_device_fw_loading(adev);
 if (r)
  goto init_failed;

 r = amdgpu_device_ip_hw_init_phase2(adev);
 if (r)
  goto init_failed;

 if (adev->gmc.xgmi.num_physical_nodes > 1)
  amdgpu_xgmi_add_device(adev);
 amdgpu_amdkfd_device_init(adev);

init_failed:
 if (amdgpu_sriov_vf(adev)) {
  if (!r)
   amdgpu_virt_init_data_exchange(adev);
  amdgpu_virt_release_full_gpu(adev, 1);
 }

 return r;
}
