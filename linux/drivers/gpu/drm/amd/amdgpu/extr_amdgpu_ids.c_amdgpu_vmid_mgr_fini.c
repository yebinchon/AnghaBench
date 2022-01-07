
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vmid_mgr {struct amdgpu_vmid* ids; int lock; } ;
struct amdgpu_vmid {int pasid_mapping; int last_flush; int flushed_updates; int active; } ;
struct TYPE_2__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 unsigned int AMDGPU_MAX_VMHUBS ;
 unsigned int AMDGPU_NUM_VMID ;
 int amdgpu_sync_free (int *) ;
 int dma_fence_put (int ) ;
 int mutex_destroy (int *) ;

void amdgpu_vmid_mgr_fini(struct amdgpu_device *adev)
{
 unsigned i, j;

 for (i = 0; i < AMDGPU_MAX_VMHUBS; ++i) {
  struct amdgpu_vmid_mgr *id_mgr =
   &adev->vm_manager.id_mgr[i];

  mutex_destroy(&id_mgr->lock);
  for (j = 0; j < AMDGPU_NUM_VMID; ++j) {
   struct amdgpu_vmid *id = &id_mgr->ids[j];

   amdgpu_sync_free(&id->active);
   dma_fence_put(id->flushed_updates);
   dma_fence_put(id->last_flush);
   dma_fence_put(id->pasid_mapping);
  }
 }
}
