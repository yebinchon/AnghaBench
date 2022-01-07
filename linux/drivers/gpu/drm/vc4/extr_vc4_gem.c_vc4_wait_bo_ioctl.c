
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {int seqno; } ;
struct drm_vc4_wait_bo {scalar_t__ pad; int timeout_ns; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;
 int vc4_wait_for_seqno_ioctl_helper (struct drm_device*,int ,int *) ;

int
vc4_wait_bo_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 int ret;
 struct drm_vc4_wait_bo *args = data;
 struct drm_gem_object *gem_obj;
 struct vc4_bo *bo;

 if (args->pad != 0)
  return -EINVAL;

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -EINVAL;
 }
 bo = to_vc4_bo(gem_obj);

 ret = vc4_wait_for_seqno_ioctl_helper(dev, bo->seqno,
           &args->timeout_ns);

 drm_gem_object_put_unlocked(gem_obj);
 return ret;
}
