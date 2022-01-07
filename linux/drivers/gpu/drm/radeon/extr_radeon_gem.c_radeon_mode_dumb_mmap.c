
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int ttm; } ;
struct radeon_bo {TYPE_1__ tbo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 int EPERM ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_mmap_offset (struct radeon_bo*) ;
 scalar_t__ radeon_ttm_tt_has_userptr (int ) ;

int radeon_mode_dumb_mmap(struct drm_file *filp,
     struct drm_device *dev,
     uint32_t handle, uint64_t *offset_p)
{
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;

 gobj = drm_gem_object_lookup(filp, handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);
 if (radeon_ttm_tt_has_userptr(robj->tbo.ttm)) {
  drm_gem_object_put_unlocked(gobj);
  return -EPERM;
 }
 *offset_p = radeon_bo_mmap_offset(robj);
 drm_gem_object_put_unlocked(gobj);
 return 0;
}
