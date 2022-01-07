
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_i915_private {int drm; } ;
struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {int cache_level; void* read_domains; void* write_domain; TYPE_1__ base; } ;


 int E2BIG ;
 int ENOMEM ;
 struct drm_i915_gem_object* ERR_PTR (int ) ;
 int GEM_BUG_ON (int) ;
 int I915_CACHE_NONE ;
 void* I915_GEM_DOMAIN_CPU ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ALIGNED (int ,int ) ;
 int drm_gem_private_object_init (int *,TYPE_1__*,int ) ;
 int fake_ops ;
 struct drm_i915_gem_object* i915_gem_object_alloc () ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;
 scalar_t__ i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;
 scalar_t__ overflows_type (int ,int ) ;

__attribute__((used)) static struct drm_i915_gem_object *
fake_dma_object(struct drm_i915_private *i915, u64 size)
{
 struct drm_i915_gem_object *obj;

 GEM_BUG_ON(!size);
 GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));

 if (overflows_type(size, obj->base.size))
  return ERR_PTR(-E2BIG);

 obj = i915_gem_object_alloc();
 if (!obj)
  goto err;

 drm_gem_private_object_init(&i915->drm, &obj->base, size);
 i915_gem_object_init(obj, &fake_ops);

 obj->write_domain = I915_GEM_DOMAIN_CPU;
 obj->read_domains = I915_GEM_DOMAIN_CPU;
 obj->cache_level = I915_CACHE_NONE;


 if (i915_gem_object_pin_pages(obj))
  goto err_obj;

 i915_gem_object_unpin_pages(obj);
 return obj;

err_obj:
 i915_gem_object_put(obj);
err:
 return ERR_PTR(-ENOMEM);
}
