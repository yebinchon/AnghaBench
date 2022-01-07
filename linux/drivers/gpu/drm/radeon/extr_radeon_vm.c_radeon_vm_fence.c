
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_vm {TYPE_2__* ids; } ;
struct radeon_fence {size_t ring; } ;
struct TYPE_3__ {void** active; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;
struct TYPE_4__ {unsigned int id; void* last_id_use; } ;


 void* radeon_fence_ref (struct radeon_fence*) ;
 int radeon_fence_unref (void**) ;

void radeon_vm_fence(struct radeon_device *rdev,
       struct radeon_vm *vm,
       struct radeon_fence *fence)
{
 unsigned vm_id = vm->ids[fence->ring].id;

 radeon_fence_unref(&rdev->vm_manager.active[vm_id]);
 rdev->vm_manager.active[vm_id] = radeon_fence_ref(fence);

 radeon_fence_unref(&vm->ids[fence->ring].last_id_use);
 vm->ids[fence->ring].last_id_use = radeon_fence_ref(fence);
}
