
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_2__ {int * handles; struct drm_file** filp; struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;


 int AMDGPU_MAX_VCE_HANDLES ;
 int DRM_ERROR (char*,int) ;
 int amdgpu_vce_get_destroy_msg (struct amdgpu_ring*,int ,int,int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;

void amdgpu_vce_free_handles(struct amdgpu_device *adev, struct drm_file *filp)
{
 struct amdgpu_ring *ring = &adev->vce.ring[0];
 int i, r;
 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i) {
  uint32_t handle = atomic_read(&adev->vce.handles[i]);

  if (!handle || adev->vce.filp[i] != filp)
   continue;

  r = amdgpu_vce_get_destroy_msg(ring, handle, 0, ((void*)0));
  if (r)
   DRM_ERROR("Error destroying VCE handle (%d)!\n", r);

  adev->vce.filp[i] = ((void*)0);
  atomic_set(&adev->vce.handles[i], 0);
 }
}
