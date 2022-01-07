
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_plane {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {int * obj; } ;


 int DRM_ERROR (char*) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dm_plane_helper_cleanup_fb(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct amdgpu_bo *rbo;
 int r;

 if (!old_state->fb)
  return;

 rbo = gem_to_amdgpu_bo(old_state->fb->obj[0]);
 r = amdgpu_bo_reserve(rbo, 0);
 if (unlikely(r)) {
  DRM_ERROR("failed to reserve rbo before unpin\n");
  return;
 }

 amdgpu_bo_unpin(rbo);
 amdgpu_bo_unreserve(rbo);
 amdgpu_bo_unref(&rbo);
}
