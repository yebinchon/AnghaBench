
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct radeon_ring {int idx; } ;
struct radeon_device {unsigned int usec_timeout; } ;


 int DRM_ERROR (char*,int ,...) ;
 int DRM_INFO (char*,int ,unsigned int) ;
 int ETIMEDOUT ;
 int VCE_CMD_END ;
 int cpu_to_le32 (int ) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;
 int udelay (int) ;
 scalar_t__ vce_v1_0_get_rptr (struct radeon_device*,struct radeon_ring*) ;

int radeon_vce_ring_test(struct radeon_device *rdev, struct radeon_ring *ring)
{
 uint32_t rptr = vce_v1_0_get_rptr(rdev, ring);
 unsigned i;
 int r;

 r = radeon_ring_lock(rdev, ring, 16);
 if (r) {
  DRM_ERROR("radeon: vce failed to lock ring %d (%d).\n",
     ring->idx, r);
  return r;
 }
 radeon_ring_write(ring, cpu_to_le32(VCE_CMD_END));
 radeon_ring_unlock_commit(rdev, ring, 0);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (vce_v1_0_get_rptr(rdev, ring) != rptr)
   break;
  udelay(1);
 }

 if (i < rdev->usec_timeout) {
  DRM_INFO("ring test on %d succeeded in %d usecs\n",
    ring->idx, i);
 } else {
  DRM_ERROR("radeon: ring %d test failed\n",
    ring->idx);
  r = -ETIMEDOUT;
 }

 return r;
}
