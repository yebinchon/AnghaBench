
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ready; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int DRM_INFO (char*) ;
 size_t TN_RING_TYPE_VCE1_INDEX ;
 size_t TN_RING_TYPE_VCE2_INDEX ;
 int radeon_ring_test (struct radeon_device*,size_t,struct radeon_ring*) ;
 int vce_v1_0_start (struct radeon_device*) ;

int vce_v1_0_init(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;

 r = vce_v1_0_start(rdev);
 if (r)
  return r;

 ring = &rdev->ring[TN_RING_TYPE_VCE1_INDEX];
 ring->ready = 1;
 r = radeon_ring_test(rdev, TN_RING_TYPE_VCE1_INDEX, ring);
 if (r) {
  ring->ready = 0;
  return r;
 }

 ring = &rdev->ring[TN_RING_TYPE_VCE2_INDEX];
 ring->ready = 1;
 r = radeon_ring_test(rdev, TN_RING_TYPE_VCE2_INDEX, ring);
 if (r) {
  ring->ready = 0;
  return r;
 }

 DRM_INFO("VCE initialized successfully.\n");

 return 0;
}
