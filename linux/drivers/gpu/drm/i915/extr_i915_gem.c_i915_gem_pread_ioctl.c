
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_pread {scalar_t__ size; int offset; int handle; int data_ptr; } ;
struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int I915_WAIT_INTERRUPTIBLE ;
 int MAX_SCHEDULE_TIMEOUT ;
 int access_ok (int ,scalar_t__) ;
 int i915_gem_gtt_pread (struct drm_i915_gem_object*,struct drm_i915_gem_pread*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int ,int ) ;
 int i915_gem_shmem_pread (struct drm_i915_gem_object*,struct drm_i915_gem_pread*) ;
 scalar_t__ range_overflows_t (int ,int ,scalar_t__,int ) ;
 int trace_i915_gem_object_pread (struct drm_i915_gem_object*,int ,scalar_t__) ;
 int u64 ;
 int u64_to_user_ptr (int ) ;

int
i915_gem_pread_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file)
{
 struct drm_i915_gem_pread *args = data;
 struct drm_i915_gem_object *obj;
 int ret;

 if (args->size == 0)
  return 0;

 if (!access_ok(u64_to_user_ptr(args->data_ptr),
         args->size))
  return -EFAULT;

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;


 if (range_overflows_t(u64, args->offset, args->size, obj->base.size)) {
  ret = -EINVAL;
  goto out;
 }

 trace_i915_gem_object_pread(obj, args->offset, args->size);

 ret = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE,
       MAX_SCHEDULE_TIMEOUT);
 if (ret)
  goto out;

 ret = i915_gem_object_pin_pages(obj);
 if (ret)
  goto out;

 ret = i915_gem_shmem_pread(obj, args);
 if (ret == -EFAULT || ret == -ENODEV)
  ret = i915_gem_gtt_pread(obj, args);

 i915_gem_object_unpin_pages(obj);
out:
 i915_gem_object_put(obj);
 return ret;
}
