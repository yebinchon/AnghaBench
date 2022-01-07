
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ) ;
 int ETIMEDOUT ;
 int RADEON_USEC_IB_TEST_TIMEOUT ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait_timeout (struct radeon_fence*,int,int ) ;
 int radeon_vce_get_create_msg (struct radeon_device*,int ,int,int *) ;
 int radeon_vce_get_destroy_msg (struct radeon_device*,int ,int,struct radeon_fence**) ;
 int usecs_to_jiffies (int ) ;

int radeon_vce_ib_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 struct radeon_fence *fence = ((void*)0);
 int r;

 r = radeon_vce_get_create_msg(rdev, ring->idx, 1, ((void*)0));
 if (r) {
  DRM_ERROR("radeon: failed to get create msg (%d).\n", r);
  goto error;
 }

 r = radeon_vce_get_destroy_msg(rdev, ring->idx, 1, &fence);
 if (r) {
  DRM_ERROR("radeon: failed to get destroy ib (%d).\n", r);
  goto error;
 }

 r = radeon_fence_wait_timeout(fence, 0, usecs_to_jiffies(
  RADEON_USEC_IB_TEST_TIMEOUT));
 if (r < 0) {
  DRM_ERROR("radeon: fence wait failed (%d).\n", r);
 } else if (r == 0) {
  DRM_ERROR("radeon: fence wait timed out.\n");
  r = -ETIMEDOUT;
 } else {
  DRM_INFO("ib test on ring %d succeeded\n", ring->idx);
  r = 0;
 }
error:
 radeon_fence_unref(&fence);
 return r;
}
