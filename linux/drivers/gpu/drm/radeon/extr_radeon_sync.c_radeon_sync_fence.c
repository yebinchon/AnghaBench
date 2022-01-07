
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sync {struct radeon_fence* last_vm_update; struct radeon_fence** sync_to; } ;
struct radeon_fence {size_t ring; scalar_t__ is_vm_update; } ;


 void* radeon_fence_later (struct radeon_fence*,struct radeon_fence*) ;

void radeon_sync_fence(struct radeon_sync *sync,
         struct radeon_fence *fence)
{
 struct radeon_fence *other;

 if (!fence)
  return;

 other = sync->sync_to[fence->ring];
 sync->sync_to[fence->ring] = radeon_fence_later(fence, other);

 if (fence->is_vm_update) {
  other = sync->last_vm_update;
  sync->last_vm_update = radeon_fence_later(fence, other);
 }
}
