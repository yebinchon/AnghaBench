
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_update_mode; int lock_pstate; scalar_t__ xgmi_map_counter; int pasid_lock; int pasid_idr; int num_prt_users; int prt_lock; scalar_t__* seqno; int fence_context; } ;
struct amdgpu_device {TYPE_1__ vm_manager; int gmc; } ;


 unsigned int AMDGPU_MAX_RINGS ;
 int AMDGPU_VM_USE_CPU_FOR_COMPUTE ;
 scalar_t__ amdgpu_gmc_vram_full_visible (int *) ;
 int amdgpu_vm_update_mode ;
 int amdgpu_vmid_mgr_init (struct amdgpu_device*) ;
 int atomic_set (int *,int ) ;
 int dma_fence_context_alloc (unsigned int) ;
 int idr_init (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void amdgpu_vm_manager_init(struct amdgpu_device *adev)
{
 unsigned i;

 amdgpu_vmid_mgr_init(adev);

 adev->vm_manager.fence_context =
  dma_fence_context_alloc(AMDGPU_MAX_RINGS);
 for (i = 0; i < AMDGPU_MAX_RINGS; ++i)
  adev->vm_manager.seqno[i] = 0;

 spin_lock_init(&adev->vm_manager.prt_lock);
 atomic_set(&adev->vm_manager.num_prt_users, 0);
 adev->vm_manager.vm_update_mode = 0;


 idr_init(&adev->vm_manager.pasid_idr);
 spin_lock_init(&adev->vm_manager.pasid_lock);

 adev->vm_manager.xgmi_map_counter = 0;
 mutex_init(&adev->vm_manager.lock_pstate);
}
