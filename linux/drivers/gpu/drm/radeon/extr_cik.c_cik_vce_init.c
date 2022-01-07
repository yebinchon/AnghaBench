
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* ring; scalar_t__ has_vce; int dev; } ;
struct TYPE_2__ {int * ring_obj; } ;


 size_t TN_RING_TYPE_VCE1_INDEX ;
 size_t TN_RING_TYPE_VCE2_INDEX ;
 int dev_err (int ,char*,int) ;
 int r600_ring_init (struct radeon_device*,TYPE_1__*,int) ;
 int radeon_vce_init (struct radeon_device*) ;

__attribute__((used)) static void cik_vce_init(struct radeon_device *rdev)
{
 int r;

 if (!rdev->has_vce)
  return;

 r = radeon_vce_init(rdev);
 if (r) {
  dev_err(rdev->dev, "failed VCE (%d) init.\n", r);






  rdev->has_vce = 0;
  return;
 }
 rdev->ring[TN_RING_TYPE_VCE1_INDEX].ring_obj = ((void*)0);
 r600_ring_init(rdev, &rdev->ring[TN_RING_TYPE_VCE1_INDEX], 4096);
 rdev->ring[TN_RING_TYPE_VCE2_INDEX].ring_obj = ((void*)0);
 r600_ring_init(rdev, &rdev->ring[TN_RING_TYPE_VCE2_INDEX], 4096);
}
