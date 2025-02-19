
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_ring {int idx; } ;
struct radeon_ib {int* ptr; int length_dw; TYPE_1__* fence; } ;
struct radeon_device {unsigned int usec_timeout; } ;
struct TYPE_2__ {int ring; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int ,unsigned int) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int PACKET3 (int ,int) ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_OFFSET ;
 int RADEON_USEC_IB_TEST_TIMEOUT ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;
 int radeon_fence_wait_timeout (TYPE_1__*,int,int ) ;
 int radeon_ib_free (struct radeon_device*,struct radeon_ib*) ;
 int radeon_ib_get (struct radeon_device*,int ,struct radeon_ib*,int *,int) ;
 int radeon_ib_schedule (struct radeon_device*,struct radeon_ib*,int *,int) ;
 int radeon_scratch_free (struct radeon_device*,int) ;
 int radeon_scratch_get (struct radeon_device*,int*) ;
 int udelay (int) ;
 int usecs_to_jiffies (int ) ;

int r600_ib_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 struct radeon_ib ib;
 uint32_t scratch;
 uint32_t tmp = 0;
 unsigned i;
 int r;

 r = radeon_scratch_get(rdev, &scratch);
 if (r) {
  DRM_ERROR("radeon: failed to get scratch reg (%d).\n", r);
  return r;
 }
 WREG32(scratch, 0xCAFEDEAD);
 r = radeon_ib_get(rdev, ring->idx, &ib, ((void*)0), 256);
 if (r) {
  DRM_ERROR("radeon: failed to get ib (%d).\n", r);
  goto free_scratch;
 }
 ib.ptr[0] = PACKET3(PACKET3_SET_CONFIG_REG, 1);
 ib.ptr[1] = ((scratch - PACKET3_SET_CONFIG_REG_OFFSET) >> 2);
 ib.ptr[2] = 0xDEADBEEF;
 ib.length_dw = 3;
 r = radeon_ib_schedule(rdev, &ib, ((void*)0), 0);
 if (r) {
  DRM_ERROR("radeon: failed to schedule ib (%d).\n", r);
  goto free_ib;
 }
 r = radeon_fence_wait_timeout(ib.fence, 0, usecs_to_jiffies(
  RADEON_USEC_IB_TEST_TIMEOUT));
 if (r < 0) {
  DRM_ERROR("radeon: fence wait failed (%d).\n", r);
  goto free_ib;
 } else if (r == 0) {
  DRM_ERROR("radeon: fence wait timed out.\n");
  r = -ETIMEDOUT;
  goto free_ib;
 }
 r = 0;
 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(scratch);
  if (tmp == 0xDEADBEEF)
   break;
  udelay(1);
 }
 if (i < rdev->usec_timeout) {
  DRM_INFO("ib test on ring %d succeeded in %u usecs\n", ib.fence->ring, i);
 } else {
  DRM_ERROR("radeon: ib test failed (scratch(0x%04X)=0x%08X)\n",
     scratch, tmp);
  r = -EINVAL;
 }
free_ib:
 radeon_ib_free(rdev, &ib);
free_scratch:
 radeon_scratch_free(rdev, scratch);
 return r;
}
