
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_unref (struct radeon_bo**) ;
 int radeon_mn_unregister (struct radeon_bo*) ;

void radeon_gem_object_free(struct drm_gem_object *gobj)
{
 struct radeon_bo *robj = gem_to_radeon_bo(gobj);

 if (robj) {
  radeon_mn_unregister(robj);
  radeon_bo_unref(&robj);
 }
}
