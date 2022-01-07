
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* ring; } ;
struct TYPE_2__ {int rptr_save_reg; } ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int r100_cp_disable (struct radeon_device*) ;
 scalar_t__ r100_cp_wait_for_idle (struct radeon_device*) ;
 int radeon_ring_fini (struct radeon_device*,TYPE_1__*) ;
 int radeon_scratch_free (struct radeon_device*,int ) ;

void r100_cp_fini(struct radeon_device *rdev)
{
 if (r100_cp_wait_for_idle(rdev)) {
  DRM_ERROR("Wait for CP idle timeout, shutting down CP.\n");
 }

 r100_cp_disable(rdev);
 radeon_scratch_free(rdev, rdev->ring[RADEON_RING_TYPE_GFX_INDEX].rptr_save_reg);
 radeon_ring_fini(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
 DRM_INFO("radeon: cp finalized\n");
}
