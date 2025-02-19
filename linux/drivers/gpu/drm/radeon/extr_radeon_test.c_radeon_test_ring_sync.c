
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int msleep (int) ;
 int pr_warn (char*,int) ;
 scalar_t__ radeon_fence_signaled (struct radeon_fence*) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait (struct radeon_fence*,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_semaphore_create (struct radeon_device*,struct radeon_semaphore**) ;
 int radeon_semaphore_emit_signal (struct radeon_device*,int ,struct radeon_semaphore*) ;
 int radeon_semaphore_emit_wait (struct radeon_device*,int ,struct radeon_semaphore*) ;
 int radeon_semaphore_free (struct radeon_device*,struct radeon_semaphore**,int *) ;
 int radeon_test_create_and_emit_fence (struct radeon_device*,struct radeon_ring*,struct radeon_fence**) ;

void radeon_test_ring_sync(struct radeon_device *rdev,
      struct radeon_ring *ringA,
      struct radeon_ring *ringB)
{
 struct radeon_fence *fence1 = ((void*)0), *fence2 = ((void*)0);
 struct radeon_semaphore *semaphore = ((void*)0);
 int r;

 r = radeon_semaphore_create(rdev, &semaphore);
 if (r) {
  DRM_ERROR("Failed to create semaphore\n");
  goto out_cleanup;
 }

 r = radeon_ring_lock(rdev, ringA, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring A %d\n", ringA->idx);
  goto out_cleanup;
 }
 radeon_semaphore_emit_wait(rdev, ringA->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringA, 0);

 r = radeon_test_create_and_emit_fence(rdev, ringA, &fence1);
 if (r)
  goto out_cleanup;

 r = radeon_ring_lock(rdev, ringA, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring A %d\n", ringA->idx);
  goto out_cleanup;
 }
 radeon_semaphore_emit_wait(rdev, ringA->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringA, 0);

 r = radeon_test_create_and_emit_fence(rdev, ringA, &fence2);
 if (r)
  goto out_cleanup;

 msleep(1000);

 if (radeon_fence_signaled(fence1)) {
  DRM_ERROR("Fence 1 signaled without waiting for semaphore.\n");
  goto out_cleanup;
 }

 r = radeon_ring_lock(rdev, ringB, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring B %p\n", ringB);
  goto out_cleanup;
 }
 radeon_semaphore_emit_signal(rdev, ringB->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringB, 0);

 r = radeon_fence_wait(fence1, 0);
 if (r) {
  DRM_ERROR("Failed to wait for sync fence 1\n");
  goto out_cleanup;
 }

 msleep(1000);

 if (radeon_fence_signaled(fence2)) {
  DRM_ERROR("Fence 2 signaled without waiting for semaphore.\n");
  goto out_cleanup;
 }

 r = radeon_ring_lock(rdev, ringB, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring B %p\n", ringB);
  goto out_cleanup;
 }
 radeon_semaphore_emit_signal(rdev, ringB->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringB, 0);

 r = radeon_fence_wait(fence2, 0);
 if (r) {
  DRM_ERROR("Failed to wait for sync fence 1\n");
  goto out_cleanup;
 }

out_cleanup:
 radeon_semaphore_free(rdev, &semaphore, ((void*)0));

 if (fence1)
  radeon_fence_unref(&fence1);

 if (fence2)
  radeon_fence_unref(&fence2);

 if (r)
  pr_warn("Error while testing ring sync (%d)\n", r);
}
