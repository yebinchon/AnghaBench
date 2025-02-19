
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {int max_handles; int * handles; int ** filp; int * vcpu_bo; } ;
struct radeon_device {TYPE_1__ uvd; } ;


 int DRM_ERROR (char*,int) ;
 int R600_RING_TYPE_UVD_INDEX ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait (struct radeon_fence*,int) ;
 int radeon_uvd_get_destroy_msg (struct radeon_device*,int ,scalar_t__,struct radeon_fence**) ;
 int radeon_uvd_note_usage (struct radeon_device*) ;

int radeon_uvd_suspend(struct radeon_device *rdev)
{
 int i, r;

 if (rdev->uvd.vcpu_bo == ((void*)0))
  return 0;

 for (i = 0; i < rdev->uvd.max_handles; ++i) {
  uint32_t handle = atomic_read(&rdev->uvd.handles[i]);
  if (handle != 0) {
   struct radeon_fence *fence;

   radeon_uvd_note_usage(rdev);

   r = radeon_uvd_get_destroy_msg(rdev,
    R600_RING_TYPE_UVD_INDEX, handle, &fence);
   if (r) {
    DRM_ERROR("Error destroying UVD (%d)!\n", r);
    continue;
   }

   radeon_fence_wait(fence, 0);
   radeon_fence_unref(&fence);

   rdev->uvd.filp[i] = ((void*)0);
   atomic_set(&rdev->uvd.handles[i], 0);
  }
 }

 return 0;
}
