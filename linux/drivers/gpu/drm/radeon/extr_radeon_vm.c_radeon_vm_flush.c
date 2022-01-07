
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct radeon_vm_id {scalar_t__ pd_gpu_addr; int id; scalar_t__ flushed_updates; } ;
struct radeon_vm {struct radeon_vm_id* ids; int page_directory; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int * ring; } ;


 scalar_t__ radeon_bo_gpu_offset (int ) ;
 scalar_t__ radeon_fence_is_earlier (scalar_t__,struct radeon_fence*) ;
 scalar_t__ radeon_fence_ref (struct radeon_fence*) ;
 int radeon_fence_unref (scalar_t__*) ;
 int radeon_ring_vm_flush (struct radeon_device*,int *,int ,scalar_t__) ;
 int trace_radeon_vm_flush (scalar_t__,int,int ) ;

void radeon_vm_flush(struct radeon_device *rdev,
       struct radeon_vm *vm,
       int ring, struct radeon_fence *updates)
{
 uint64_t pd_addr = radeon_bo_gpu_offset(vm->page_directory);
 struct radeon_vm_id *vm_id = &vm->ids[ring];

 if (pd_addr != vm_id->pd_gpu_addr || !vm_id->flushed_updates ||
     radeon_fence_is_earlier(vm_id->flushed_updates, updates)) {

  trace_radeon_vm_flush(pd_addr, ring, vm->ids[ring].id);
  radeon_fence_unref(&vm_id->flushed_updates);
  vm_id->flushed_updates = radeon_fence_ref(updates);
  vm_id->pd_gpu_addr = pd_addr;
  radeon_ring_vm_flush(rdev, &rdev->ring[ring],
         vm_id->id, vm_id->pd_gpu_addr);

 }
}
