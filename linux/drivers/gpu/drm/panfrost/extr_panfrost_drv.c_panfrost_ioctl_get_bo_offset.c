
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct panfrost_gem_object {TYPE_1__ node; } ;
struct drm_panfrost_get_bo_offset {int offset; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int ENOENT ;
 int PAGE_SHIFT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct panfrost_gem_object* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static int panfrost_ioctl_get_bo_offset(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_panfrost_get_bo_offset *args = data;
 struct drm_gem_object *gem_obj;
 struct panfrost_gem_object *bo;

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -ENOENT;
 }
 bo = to_panfrost_bo(gem_obj);

 args->offset = bo->node.start << PAGE_SHIFT;

 drm_gem_object_put_unlocked(gem_obj);
 return 0;
}
