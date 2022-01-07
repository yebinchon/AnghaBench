
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_rings; int idle_mutex; int fw; int * ring; int cpu_addr; int gpu_addr; int * vcpu_bo; int entity; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int amdgpu_bo_free_kernel (int **,int *,void**) ;
 int amdgpu_ring_fini (int *) ;
 int drm_sched_entity_destroy (int *) ;
 int mutex_destroy (int *) ;
 int release_firmware (int ) ;

int amdgpu_vce_sw_fini(struct amdgpu_device *adev)
{
 unsigned i;

 if (adev->vce.vcpu_bo == ((void*)0))
  return 0;

 drm_sched_entity_destroy(&adev->vce.entity);

 amdgpu_bo_free_kernel(&adev->vce.vcpu_bo, &adev->vce.gpu_addr,
  (void **)&adev->vce.cpu_addr);

 for (i = 0; i < adev->vce.num_rings; i++)
  amdgpu_ring_fini(&adev->vce.ring[i]);

 release_firmware(adev->vce.fw);
 mutex_destroy(&adev->vce.idle_mutex);

 return 0;
}
