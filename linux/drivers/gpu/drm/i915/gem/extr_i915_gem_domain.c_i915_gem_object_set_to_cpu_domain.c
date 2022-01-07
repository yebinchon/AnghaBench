
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int read_domains; int write_domain; } ;


 int GEM_BUG_ON (int) ;
 int I915_CLFLUSH_SYNC ;
 int I915_GEM_DOMAIN_CPU ;
 int I915_WAIT_ALL ;
 int I915_WAIT_INTERRUPTIBLE ;
 int MAX_SCHEDULE_TIMEOUT ;
 int __start_cpu_write (struct drm_i915_gem_object*) ;
 int assert_object_held (struct drm_i915_gem_object*) ;
 int i915_gem_clflush_object (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_flush_write_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_wait (struct drm_i915_gem_object*,int,int ) ;

int
i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write)
{
 int ret;

 assert_object_held(obj);

 ret = i915_gem_object_wait(obj,
       I915_WAIT_INTERRUPTIBLE |
       (write ? I915_WAIT_ALL : 0),
       MAX_SCHEDULE_TIMEOUT);
 if (ret)
  return ret;

 i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);


 if ((obj->read_domains & I915_GEM_DOMAIN_CPU) == 0) {
  i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
  obj->read_domains |= I915_GEM_DOMAIN_CPU;
 }




 GEM_BUG_ON(obj->write_domain & ~I915_GEM_DOMAIN_CPU);




 if (write)
  __start_cpu_write(obj);

 return 0;
}
