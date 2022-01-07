
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ttm; } ;
struct radeon_bo {int initial_domain; TYPE_1__ tbo; } ;
struct drm_radeon_gem_op {int op; int value; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int RADEON_GEM_DOMAIN_CPU ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;


 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 scalar_t__ radeon_ttm_tt_has_userptr (int ) ;
 scalar_t__ unlikely (int) ;

int radeon_gem_op_ioctl(struct drm_device *dev, void *data,
   struct drm_file *filp)
{
 struct drm_radeon_gem_op *args = data;
 struct drm_gem_object *gobj;
 struct radeon_bo *robj;
 int r;

 gobj = drm_gem_object_lookup(filp, args->handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_radeon_bo(gobj);

 r = -EPERM;
 if (radeon_ttm_tt_has_userptr(robj->tbo.ttm))
  goto out;

 r = radeon_bo_reserve(robj, 0);
 if (unlikely(r))
  goto out;

 switch (args->op) {
 case 129:
  args->value = robj->initial_domain;
  break;
 case 128:
  robj->initial_domain = args->value & (RADEON_GEM_DOMAIN_VRAM |
            RADEON_GEM_DOMAIN_GTT |
            RADEON_GEM_DOMAIN_CPU);
  break;
 default:
  r = -EINVAL;
 }

 radeon_bo_unreserve(robj);
out:
 drm_gem_object_put_unlocked(gobj);
 return r;
}
