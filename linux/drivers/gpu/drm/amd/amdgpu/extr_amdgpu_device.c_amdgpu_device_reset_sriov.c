
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gim_feature; } ;
struct TYPE_6__ {int * man; } ;
struct TYPE_4__ {TYPE_3__ bdev; } ;
struct amdgpu_device {TYPE_2__ virt; TYPE_1__ mman; } ;


 int AMDGIM_FEATURE_GIM_FLR_VRAMLOST ;
 size_t TTM_PL_TT ;
 int amdgpu_amdkfd_post_reset (struct amdgpu_device*) ;
 int amdgpu_amdkfd_pre_reset (struct amdgpu_device*) ;
 int amdgpu_device_fw_loading (struct amdgpu_device*) ;
 int amdgpu_device_ip_reinit_early_sriov (struct amdgpu_device*) ;
 int amdgpu_device_ip_reinit_late_sriov (struct amdgpu_device*) ;
 int amdgpu_device_recover_vram (struct amdgpu_device*) ;
 int amdgpu_gtt_mgr_recover (int *) ;
 int amdgpu_ib_ring_tests (struct amdgpu_device*) ;
 int amdgpu_inc_vram_lost (struct amdgpu_device*) ;
 int amdgpu_irq_gpu_reset_resume_helper (struct amdgpu_device*) ;
 int amdgpu_virt_init_data_exchange (struct amdgpu_device*) ;
 int amdgpu_virt_release_full_gpu (struct amdgpu_device*,int) ;
 int amdgpu_virt_request_full_gpu (struct amdgpu_device*,int) ;
 int amdgpu_virt_reset_gpu (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_device_reset_sriov(struct amdgpu_device *adev,
         bool from_hypervisor)
{
 int r;

 if (from_hypervisor)
  r = amdgpu_virt_request_full_gpu(adev, 1);
 else
  r = amdgpu_virt_reset_gpu(adev);
 if (r)
  return r;

 amdgpu_amdkfd_pre_reset(adev);


 r = amdgpu_device_ip_reinit_early_sriov(adev);
 if (r)
  goto error;


 amdgpu_gtt_mgr_recover(&adev->mman.bdev.man[TTM_PL_TT]);

 r = amdgpu_device_fw_loading(adev);
 if (r)
  return r;


 r = amdgpu_device_ip_reinit_late_sriov(adev);
 if (r)
  goto error;

 amdgpu_irq_gpu_reset_resume_helper(adev);
 r = amdgpu_ib_ring_tests(adev);
 amdgpu_amdkfd_post_reset(adev);

error:
 amdgpu_virt_init_data_exchange(adev);
 amdgpu_virt_release_full_gpu(adev, 1);
 if (!r && adev->virt.gim_feature & AMDGIM_FEATURE_GIM_FLR_VRAMLOST) {
  amdgpu_inc_vram_lost(adev);
  r = amdgpu_device_recover_vram(adev);
 }

 return r;
}
