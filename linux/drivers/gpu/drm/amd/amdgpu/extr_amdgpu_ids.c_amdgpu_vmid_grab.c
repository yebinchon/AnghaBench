
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_vmid_mgr {int ids; int lock; int ids_lru; } ;
struct amdgpu_vmid {int * last_flush; int owner; int pd_gpu_addr; int list; int * flushed_updates; int active; } ;
struct TYPE_6__ {int fence_context; } ;
struct amdgpu_vm {int pasid; TYPE_3__ entity; scalar_t__* reserved_vmid; } ;
struct amdgpu_sync {struct dma_fence* last_vm_update; } ;
struct amdgpu_ring {struct amdgpu_device* adev; TYPE_1__* funcs; } ;
struct amdgpu_job {int vm_needs_flush; int pasid; struct amdgpu_vmid* vmid; int vm_pd_addr; } ;
struct TYPE_5__ {struct amdgpu_vmid_mgr* id_mgr; } ;
struct amdgpu_device {TYPE_2__ vm_manager; } ;
struct TYPE_4__ {unsigned int vmhub; } ;


 int amdgpu_sync_fence (struct amdgpu_device*,int *,struct dma_fence*,int) ;
 int amdgpu_vmid_grab_idle (struct amdgpu_vm*,struct amdgpu_ring*,struct amdgpu_sync*,struct amdgpu_vmid**) ;
 int amdgpu_vmid_grab_reserved (struct amdgpu_vm*,struct amdgpu_ring*,struct amdgpu_sync*,struct dma_fence*,struct amdgpu_job*,struct amdgpu_vmid**) ;
 int amdgpu_vmid_grab_used (struct amdgpu_vm*,struct amdgpu_ring*,struct amdgpu_sync*,struct dma_fence*,struct amdgpu_job*,struct amdgpu_vmid**) ;
 int * dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_amdgpu_vm_grab_id (struct amdgpu_vm*,struct amdgpu_ring*,struct amdgpu_job*) ;

int amdgpu_vmid_grab(struct amdgpu_vm *vm, struct amdgpu_ring *ring,
       struct amdgpu_sync *sync, struct dma_fence *fence,
       struct amdgpu_job *job)
{
 struct amdgpu_device *adev = ring->adev;
 unsigned vmhub = ring->funcs->vmhub;
 struct amdgpu_vmid_mgr *id_mgr = &adev->vm_manager.id_mgr[vmhub];
 struct amdgpu_vmid *idle = ((void*)0);
 struct amdgpu_vmid *id = ((void*)0);
 int r = 0;

 mutex_lock(&id_mgr->lock);
 r = amdgpu_vmid_grab_idle(vm, ring, sync, &idle);
 if (r || !idle)
  goto error;

 if (vm->reserved_vmid[vmhub]) {
  r = amdgpu_vmid_grab_reserved(vm, ring, sync, fence, job, &id);
  if (r || !id)
   goto error;
 } else {
  r = amdgpu_vmid_grab_used(vm, ring, sync, fence, job, &id);
  if (r)
   goto error;

  if (!id) {
   struct dma_fence *updates = sync->last_vm_update;


   id = idle;


   r = amdgpu_sync_fence(ring->adev, &id->active,
           fence, 0);
   if (r)
    goto error;

   dma_fence_put(id->flushed_updates);
   id->flushed_updates = dma_fence_get(updates);
   job->vm_needs_flush = 1;
  }

  list_move_tail(&id->list, &id_mgr->ids_lru);
 }

 id->pd_gpu_addr = job->vm_pd_addr;
 id->owner = vm->entity.fence_context;

 if (job->vm_needs_flush) {
  dma_fence_put(id->last_flush);
  id->last_flush = ((void*)0);
 }
 job->vmid = id - id_mgr->ids;
 job->pasid = vm->pasid;
 trace_amdgpu_vm_grab_id(vm, ring, job);

error:
 mutex_unlock(&id_mgr->lock);
 return r;
}
