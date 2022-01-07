
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ring_size; } ;
struct radeon_device {int dev; struct radeon_ring* ring; int has_uvd; } ;


 int PACKET0 (int ,int ) ;
 size_t R600_RING_TYPE_UVD_INDEX ;
 int UVD_NO_OP ;
 int dev_err (int ,char*,int) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,int ,int ,int ) ;
 int uvd_v1_0_init (struct radeon_device*) ;

__attribute__((used)) static void cik_uvd_resume(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;

 if (!rdev->has_uvd || !rdev->ring[R600_RING_TYPE_UVD_INDEX].ring_size)
  return;

 ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, 0, PACKET0(UVD_NO_OP, 0));
 if (r) {
  dev_err(rdev->dev, "failed initializing UVD ring (%d).\n", r);
  return;
 }
 r = uvd_v1_0_init(rdev);
 if (r) {
  dev_err(rdev->dev, "failed initializing UVD (%d).\n", r);
  return;
 }
}
