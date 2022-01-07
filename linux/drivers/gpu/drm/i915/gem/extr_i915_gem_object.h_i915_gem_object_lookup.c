
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int refcount; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;


 struct drm_i915_gem_object* i915_gem_object_lookup_rcu (struct drm_file*,int ) ;
 int kref_get_unless_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct drm_i915_gem_object *
i915_gem_object_lookup(struct drm_file *file, u32 handle)
{
 struct drm_i915_gem_object *obj;

 rcu_read_lock();
 obj = i915_gem_object_lookup_rcu(file, handle);
 if (obj && !kref_get_unless_zero(&obj->base.refcount))
  obj = ((void*)0);
 rcu_read_unlock();

 return obj;
}
