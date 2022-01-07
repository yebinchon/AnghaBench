
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * handles; struct drm_file** filp; } ;
struct radeon_device {TYPE_1__ vce; } ;
struct drm_file {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int RADEON_MAX_VCE_HANDLES ;
 int TN_RING_TYPE_VCE1_INDEX ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int radeon_vce_get_destroy_msg (struct radeon_device*,int ,int ,int *) ;
 int radeon_vce_note_usage (struct radeon_device*) ;

void radeon_vce_free_handles(struct radeon_device *rdev, struct drm_file *filp)
{
 int i, r;
 for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i) {
  uint32_t handle = atomic_read(&rdev->vce.handles[i]);
  if (!handle || rdev->vce.filp[i] != filp)
   continue;

  radeon_vce_note_usage(rdev);

  r = radeon_vce_get_destroy_msg(rdev, TN_RING_TYPE_VCE1_INDEX,
            handle, ((void*)0));
  if (r)
   DRM_ERROR("Error destroying VCE handle (%d)!\n", r);

  rdev->vce.filp[i] = ((void*)0);
  atomic_set(&rdev->vce.handles[i], 0);
 }
}
