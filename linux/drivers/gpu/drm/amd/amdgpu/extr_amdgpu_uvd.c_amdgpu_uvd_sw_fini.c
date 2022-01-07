
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_uvd_inst; int harvest_config; int fw; TYPE_1__* inst; int entity; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {int * ring_enc; int ring; int cpu_addr; int gpu_addr; int vcpu_bo; int saved_bo; } ;


 int AMDGPU_MAX_UVD_ENC_RINGS ;
 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int amdgpu_ring_fini (int *) ;
 int drm_sched_entity_destroy (int *) ;
 int kvfree (int ) ;
 int release_firmware (int ) ;

int amdgpu_uvd_sw_fini(struct amdgpu_device *adev)
{
 int i, j;

 drm_sched_entity_destroy(&adev->uvd.entity);

 for (j = 0; j < adev->uvd.num_uvd_inst; ++j) {
  if (adev->uvd.harvest_config & (1 << j))
   continue;
  kvfree(adev->uvd.inst[j].saved_bo);

  amdgpu_bo_free_kernel(&adev->uvd.inst[j].vcpu_bo,
          &adev->uvd.inst[j].gpu_addr,
          (void **)&adev->uvd.inst[j].cpu_addr);

  amdgpu_ring_fini(&adev->uvd.inst[j].ring);

  for (i = 0; i < AMDGPU_MAX_UVD_ENC_RINGS; ++i)
   amdgpu_ring_fini(&adev->uvd.inst[j].ring_enc[i]);
 }
 release_firmware(adev->uvd.fw);

 return 0;
}
