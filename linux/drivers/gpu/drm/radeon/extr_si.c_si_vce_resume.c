
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ring_size; } ;
struct radeon_device {int dev; struct radeon_ring* ring; int has_vce; } ;


 size_t TN_RING_TYPE_VCE1_INDEX ;
 size_t TN_RING_TYPE_VCE2_INDEX ;
 int VCE_CMD_NO_OP ;
 int dev_err (int ,char*,int) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,int ,int ,int ) ;
 int vce_v1_0_init (struct radeon_device*) ;

__attribute__((used)) static void si_vce_resume(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;

 if (!rdev->has_vce || !rdev->ring[TN_RING_TYPE_VCE1_INDEX].ring_size)
  return;

 ring = &rdev->ring[TN_RING_TYPE_VCE1_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, 0, VCE_CMD_NO_OP);
 if (r) {
  dev_err(rdev->dev, "failed initializing VCE1 ring (%d).\n", r);
  return;
 }
 ring = &rdev->ring[TN_RING_TYPE_VCE2_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, 0, VCE_CMD_NO_OP);
 if (r) {
  dev_err(rdev->dev, "failed initializing VCE1 ring (%d).\n", r);
  return;
 }
 r = vce_v1_0_init(rdev);
 if (r) {
  dev_err(rdev->dev, "failed initializing VCE (%d).\n", r);
  return;
 }
}
