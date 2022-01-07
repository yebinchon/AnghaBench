
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int size; } ;
struct drm_i915_private {int drm; } ;
struct drm_i915_gem_object {int read_domains; struct drm_mm_node* stolen; int base; } ;


 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 unsigned int I915_CACHE_LLC ;
 unsigned int I915_CACHE_NONE ;
 int I915_GEM_DOMAIN_CPU ;
 int I915_GEM_DOMAIN_GTT ;
 int drm_gem_private_object_init (int *,int *,int ) ;
 struct drm_i915_gem_object* i915_gem_object_alloc () ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;
 scalar_t__ i915_gem_object_pin_pages (struct drm_i915_gem_object*) ;
 int i915_gem_object_set_cache_coherency (struct drm_i915_gem_object*,unsigned int) ;
 int i915_gem_object_stolen_ops ;

__attribute__((used)) static struct drm_i915_gem_object *
_i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
          struct drm_mm_node *stolen)
{
 struct drm_i915_gem_object *obj;
 unsigned int cache_level;

 obj = i915_gem_object_alloc();
 if (obj == ((void*)0))
  return ((void*)0);

 drm_gem_private_object_init(&dev_priv->drm, &obj->base, stolen->size);
 i915_gem_object_init(obj, &i915_gem_object_stolen_ops);

 obj->stolen = stolen;
 obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
 cache_level = HAS_LLC(dev_priv) ? I915_CACHE_LLC : I915_CACHE_NONE;
 i915_gem_object_set_cache_coherency(obj, cache_level);

 if (i915_gem_object_pin_pages(obj))
  goto cleanup;

 return obj;

cleanup:
 i915_gem_object_free(obj);
 return ((void*)0);
}
