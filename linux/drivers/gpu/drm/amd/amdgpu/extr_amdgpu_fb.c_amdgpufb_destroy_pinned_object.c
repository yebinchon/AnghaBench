
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void amdgpufb_destroy_pinned_object(struct drm_gem_object *gobj)
{
 struct amdgpu_bo *abo = gem_to_amdgpu_bo(gobj);
 int ret;

 ret = amdgpu_bo_reserve(abo, 1);
 if (likely(ret == 0)) {
  amdgpu_bo_kunmap(abo);
  amdgpu_bo_unpin(abo);
  amdgpu_bo_unreserve(abo);
 }
 drm_gem_object_put_unlocked(gobj);
}
