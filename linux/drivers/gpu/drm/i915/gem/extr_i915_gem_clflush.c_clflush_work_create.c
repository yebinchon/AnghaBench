
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int cache_dirty; } ;
struct clflush {int obj; int base; } ;


 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int clflush_ops ;
 int dma_fence_work_init (int *,int *) ;
 int i915_gem_object_get (struct drm_i915_gem_object*) ;
 struct clflush* kmalloc (int,int ) ;

__attribute__((used)) static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
{
 struct clflush *clflush;

 GEM_BUG_ON(!obj->cache_dirty);

 clflush = kmalloc(sizeof(*clflush), GFP_KERNEL);
 if (!clflush)
  return ((void*)0);

 dma_fence_work_init(&clflush->base, &clflush_ops);
 clflush->obj = i915_gem_object_get(obj);

 return clflush;
}
