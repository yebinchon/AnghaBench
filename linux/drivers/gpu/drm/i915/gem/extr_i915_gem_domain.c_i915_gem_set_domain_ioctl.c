
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_gem_set_domain {int read_domains; int write_domain; int handle; } ;
struct drm_i915_gem_object {int frontbuffer; int write_domain; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 int I915_GEM_DOMAIN_GTT ;
 int I915_GEM_DOMAIN_WC ;
 int I915_GEM_GPU_DOMAINS ;
 int I915_WAIT_ALL ;
 int I915_WAIT_INTERRUPTIBLE ;
 int I915_WAIT_PRIORITY ;
 int MAX_SCHEDULE_TIMEOUT ;
 int ORIGIN_CPU ;
 int READ_ONCE (int ) ;
 int i915_gem_object_bump_inactive_ggtt (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_is_proxy (struct drm_i915_gem_object*) ;
 int i915_gem_object_lock_interruptible (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_lookup (struct drm_file*,int ) ;
 int i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_to_cpu_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_set_to_wc_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int,int ) ;
 int intel_frontbuffer_invalidate (int ,int ) ;

int
i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_set_domain *args = data;
 struct drm_i915_gem_object *obj;
 u32 read_domains = args->read_domains;
 u32 write_domain = args->write_domain;
 int err;


 if ((write_domain | read_domains) & I915_GEM_GPU_DOMAINS)
  return -EINVAL;





 if (write_domain && read_domains != write_domain)
  return -EINVAL;

 if (!read_domains)
  return 0;

 obj = i915_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;
 if (READ_ONCE(obj->write_domain) == read_domains) {
  err = 0;
  goto out;
 }






 err = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE |
       I915_WAIT_PRIORITY |
       (write_domain ? I915_WAIT_ALL : 0),
       MAX_SCHEDULE_TIMEOUT);
 if (err)
  goto out;







 if (i915_gem_object_is_proxy(obj)) {
  err = -ENXIO;
  goto out;
 }
 err = i915_gem_object_pin_pages(obj);
 if (err)
  goto out;

 err = i915_gem_object_lock_interruptible(obj);
 if (err)
  goto out_unpin;

 if (read_domains & I915_GEM_DOMAIN_WC)
  err = i915_gem_object_set_to_wc_domain(obj, write_domain);
 else if (read_domains & I915_GEM_DOMAIN_GTT)
  err = i915_gem_object_set_to_gtt_domain(obj, write_domain);
 else
  err = i915_gem_object_set_to_cpu_domain(obj, write_domain);


 i915_gem_object_bump_inactive_ggtt(obj);

 i915_gem_object_unlock(obj);

 if (write_domain)
  intel_frontbuffer_invalidate(obj->frontbuffer, ORIGIN_CPU);

out_unpin:
 i915_gem_object_unpin_pages(obj);
out:
 i915_gem_object_put(obj);
 return err;
}
