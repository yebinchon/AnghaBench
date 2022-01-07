
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vcpu_bo; } ;
struct radeon_device {int uvd_fw; int * ring; TYPE_1__ uvd; } ;


 size_t R600_RING_TYPE_UVD_INDEX ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;
 int radeon_ring_fini (struct radeon_device*,int *) ;
 int release_firmware (int ) ;

void radeon_uvd_fini(struct radeon_device *rdev)
{
 int r;

 if (rdev->uvd.vcpu_bo == ((void*)0))
  return;

 r = radeon_bo_reserve(rdev->uvd.vcpu_bo, 0);
 if (!r) {
  radeon_bo_kunmap(rdev->uvd.vcpu_bo);
  radeon_bo_unpin(rdev->uvd.vcpu_bo);
  radeon_bo_unreserve(rdev->uvd.vcpu_bo);
 }

 radeon_bo_unref(&rdev->uvd.vcpu_bo);

 radeon_ring_fini(rdev, &rdev->ring[R600_RING_TYPE_UVD_INDEX]);

 release_firmware(rdev->uvd_fw);
}
