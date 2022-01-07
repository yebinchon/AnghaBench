
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_mn_unregister (struct amdgpu_bo*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;

void amdgpu_gem_object_free(struct drm_gem_object *gobj)
{
 struct amdgpu_bo *robj = gem_to_amdgpu_bo(gobj);

 if (robj) {
  amdgpu_mn_unregister(robj);
  amdgpu_bo_unref(&robj);
 }
}
