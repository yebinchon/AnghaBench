
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int base; } ;
struct drm_file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 struct drm_i915_gem_object* i915_gem_object_create_shmem (struct drm_i915_private*,scalar_t__) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 scalar_t__ round_up (scalar_t__,int ) ;

__attribute__((used)) static int
i915_gem_create(struct drm_file *file,
  struct drm_i915_private *dev_priv,
  u64 *size_p,
  u32 *handle_p)
{
 struct drm_i915_gem_object *obj;
 u32 handle;
 u64 size;
 int ret;

 size = round_up(*size_p, PAGE_SIZE);
 if (size == 0)
  return -EINVAL;


 obj = i915_gem_object_create_shmem(dev_priv, size);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 ret = drm_gem_handle_create(file, &obj->base, &handle);

 i915_gem_object_put(obj);
 if (ret)
  return ret;

 *handle_p = handle;
 *size_p = size;
 return 0;
}
