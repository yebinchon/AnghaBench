
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct v3d_bo {TYPE_1__ node; } ;
struct drm_v3d_get_bo_offset {int offset; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int ENOENT ;
 int PAGE_SHIFT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct v3d_bo* to_v3d_bo (struct drm_gem_object*) ;

int v3d_get_bo_offset_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_v3d_get_bo_offset *args = data;
 struct drm_gem_object *gem_obj;
 struct v3d_bo *bo;

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -ENOENT;
 }
 bo = to_v3d_bo(gem_obj);

 args->offset = bo->node.start << PAGE_SHIFT;

 drm_gem_object_put_unlocked(gem_obj);
 return 0;
}
