
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_set_tiling {int pitch; int tiling_flags; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_set_tiling_flags (struct radeon_bo*,int ,int ) ;

int radeon_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{
 struct drm_radeon_gem_set_tiling *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r = 0;

 DRM_DEBUG("%d \n", args->handle);
 gobj = drm_gem_object_lookup(filp, args->handle);
 if (gobj == ((void*)0))
  return -ENOENT;
 robj = gem_to_radeon_bo(gobj);
 r = radeon_bo_set_tiling_flags(robj, args->tiling_flags, args->pitch);
 drm_gem_object_put_unlocked(gobj);
 return r;
}
