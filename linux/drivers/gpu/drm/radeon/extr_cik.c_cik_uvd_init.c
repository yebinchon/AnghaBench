
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* ring; scalar_t__ has_uvd; int dev; } ;
struct TYPE_2__ {int * ring_obj; } ;


 size_t R600_RING_TYPE_UVD_INDEX ;
 int dev_err (int ,char*,int) ;
 int r600_ring_init (struct radeon_device*,TYPE_1__*,int) ;
 int radeon_uvd_init (struct radeon_device*) ;

__attribute__((used)) static void cik_uvd_init(struct radeon_device *rdev)
{
 int r;

 if (!rdev->has_uvd)
  return;

 r = radeon_uvd_init(rdev);
 if (r) {
  dev_err(rdev->dev, "failed UVD (%d) init.\n", r);






  rdev->has_uvd = 0;
  return;
 }
 rdev->ring[R600_RING_TYPE_UVD_INDEX].ring_obj = ((void*)0);
 r600_ring_init(rdev, &rdev->ring[R600_RING_TYPE_UVD_INDEX], 4096);
}
