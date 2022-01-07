
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {struct drm_i915_gem_object* obj; } ;
struct i915_request {int dummy; } ;
struct drm_i915_gem_object {int cache_dirty; int cache_coherent; } ;


 int i915_gem_clflush_object (struct drm_i915_gem_object*,int ) ;
 int i915_request_await_object (struct i915_request*,struct drm_i915_gem_object*,int) ;

__attribute__((used)) static int move_to_gpu(struct i915_vma *vma, struct i915_request *rq, bool write)
{
 struct drm_i915_gem_object *obj = vma->obj;

 if (obj->cache_dirty & ~obj->cache_coherent)
  i915_gem_clflush_object(obj, 0);

 return i915_request_await_object(rq, obj, write);
}
