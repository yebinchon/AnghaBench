
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_wait {scalar_t__ flags; scalar_t__ timeout_ns; int bo_handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;


 long EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 long ETIME ;
 int I915_WAIT_ALL ;
 int I915_WAIT_INTERRUPTIBLE ;
 int I915_WAIT_PRIORITY ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 long i915_gem_object_wait (struct drm_i915_gem_object*,int,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int nsecs_to_jiffies (scalar_t__) ;
 int to_wait_timeout (scalar_t__) ;

int
i915_gem_wait_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_i915_gem_wait *args = data;
 struct drm_i915_gem_object *obj;
 ktime_t start;
 long ret;

 if (args->flags != 0)
  return -EINVAL;

 obj = i915_gem_object_lookup(file, args->bo_handle);
 if (!obj)
  return -ENOENT;

 start = ktime_get();

 ret = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE |
       I915_WAIT_PRIORITY |
       I915_WAIT_ALL,
       to_wait_timeout(args->timeout_ns));

 if (args->timeout_ns > 0) {
  args->timeout_ns -= ktime_to_ns(ktime_sub(ktime_get(), start));
  if (args->timeout_ns < 0)
   args->timeout_ns = 0;
  if (ret == -ETIME && !nsecs_to_jiffies(args->timeout_ns))
   args->timeout_ns = 0;


  if (ret == -ETIME && args->timeout_ns)
   ret = -EAGAIN;
 }

 i915_gem_object_put(obj);
 return ret;
}
