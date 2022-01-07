
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int object_idr; } ;


 int WARN_ON (int) ;
 scalar_t__ debug_locks ;
 struct drm_i915_gem_object* idr_find (int *,int ) ;
 int lock_is_held (int *) ;
 int rcu_lock_map ;

__attribute__((used)) static inline struct drm_i915_gem_object *
i915_gem_object_lookup_rcu(struct drm_file *file, u32 handle)
{



 return idr_find(&file->object_idr, handle);
}
