
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,char) ;
 int msleep (int) ;
 int pr_warn (char*,int) ;
 int radeon_fence_signaled (struct radeon_fence*) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait (struct radeon_fence*,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_semaphore_create (struct radeon_device*,struct radeon_semaphore**) ;
 int radeon_semaphore_emit_signal (struct radeon_device*,int ,struct radeon_semaphore*) ;
 int radeon_semaphore_emit_wait (struct radeon_device*,int ,struct radeon_semaphore*) ;
 int radeon_semaphore_free (struct radeon_device*,struct radeon_semaphore**,int *) ;
 int radeon_test_create_and_emit_fence (struct radeon_device*,struct radeon_ring*,struct radeon_fence**) ;

__attribute__((used)) static void radeon_test_ring_sync2(struct radeon_device *rdev,
       struct radeon_ring *ringA,
       struct radeon_ring *ringB,
       struct radeon_ring *ringC)
{
 struct radeon_fence *fenceA = ((void*)0), *fenceB = ((void*)0);
 struct radeon_semaphore *semaphore = ((void*)0);
 bool sigA, sigB;
 int i, r;

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

 r = radeon_test_create_and_emit_fence(rdev, ringA, &fenceA);
 if (r)
  goto out_cleanup;

 r = radeon_ring_lock(rdev, ringB, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring B %d\n", ringB->idx);
  goto out_cleanup;
 }
 radeon_semaphore_emit_wait(rdev, ringB->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringB, 0);
 r = radeon_test_create_and_emit_fence(rdev, ringB, &fenceB);
 if (r)
  goto out_cleanup;

 msleep(1000);

 if (radeon_fence_signaled(fenceA)) {
  DRM_ERROR("Fence A signaled without waiting for semaphore.\n");
  goto out_cleanup;
 }
 if (radeon_fence_signaled(fenceB)) {
  DRM_ERROR("Fence B signaled without waiting for semaphore.\n");
  goto out_cleanup;
 }

 r = radeon_ring_lock(rdev, ringC, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring B %p\n", ringC);
  goto out_cleanup;
 }
 radeon_semaphore_emit_signal(rdev, ringC->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringC, 0);

 for (i = 0; i < 30; ++i) {
  msleep(100);
  sigA = radeon_fence_signaled(fenceA);
  sigB = radeon_fence_signaled(fenceB);
  if (sigA || sigB)
   break;
 }

 if (!sigA && !sigB) {
  DRM_ERROR("Neither fence A nor B has been signaled\n");
  goto out_cleanup;
 } else if (sigA && sigB) {
  DRM_ERROR("Both fence A and B has been signaled\n");
  goto out_cleanup;
 }

 DRM_INFO("Fence %c was first signaled\n", sigA ? 'A' : 'B');

 r = radeon_ring_lock(rdev, ringC, 64);
 if (r) {
  DRM_ERROR("Failed to lock ring B %p\n", ringC);
  goto out_cleanup;
 }
 radeon_semaphore_emit_signal(rdev, ringC->idx, semaphore);
 radeon_ring_unlock_commit(rdev, ringC, 0);

 msleep(1000);

 r = radeon_fence_wait(fenceA, 0);
 if (r) {
  DRM_ERROR("Failed to wait for sync fence A\n");
  goto out_cleanup;
 }
 r = radeon_fence_wait(fenceB, 0);
 if (r) {
  DRM_ERROR("Failed to wait for sync fence B\n");
  goto out_cleanup;
 }

out_cleanup:
 radeon_semaphore_free(rdev, &semaphore, ((void*)0));

 if (fenceA)
  radeon_fence_unref(&fenceA);

 if (fenceB)
  radeon_fence_unref(&fenceB);

 if (r)
  pr_warn("Error while testing ring sync (%d)\n", r);
}
