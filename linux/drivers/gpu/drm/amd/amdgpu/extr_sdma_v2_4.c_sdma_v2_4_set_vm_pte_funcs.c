
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_gpu_scheduler {int * sched_rq; } ;
struct TYPE_8__ {unsigned int num_instances; TYPE_2__* instance; } ;
struct TYPE_7__ {unsigned int vm_pte_num_rqs; int ** vm_pte_rqs; int * vm_pte_funcs; } ;
struct amdgpu_device {TYPE_4__ sdma; TYPE_3__ vm_manager; } ;
struct TYPE_5__ {struct drm_gpu_scheduler sched; } ;
struct TYPE_6__ {TYPE_1__ ring; } ;


 size_t DRM_SCHED_PRIORITY_KERNEL ;
 int sdma_v2_4_vm_pte_funcs ;

__attribute__((used)) static void sdma_v2_4_set_vm_pte_funcs(struct amdgpu_device *adev)
{
 struct drm_gpu_scheduler *sched;
 unsigned i;

 adev->vm_manager.vm_pte_funcs = &sdma_v2_4_vm_pte_funcs;
 for (i = 0; i < adev->sdma.num_instances; i++) {
  sched = &adev->sdma.instance[i].ring.sched;
  adev->vm_manager.vm_pte_rqs[i] =
   &sched->sched_rq[DRM_SCHED_PRIORITY_KERNEL];
 }
 adev->vm_manager.vm_pte_num_rqs = adev->sdma.num_instances;
}
