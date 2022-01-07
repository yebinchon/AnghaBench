
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* filp; int size; } ;
struct drm_i915_gem_object {void* read_domains; void* write_domain; TYPE_2__ base; } ;
struct address_space {int dummy; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct address_space* f_mapping; } ;


 int E2BIG ;
 int ENOMEM ;
 struct drm_i915_gem_object* ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 int GFP_HIGHUSER ;
 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 unsigned int I915_CACHE_LLC ;
 unsigned int I915_CACHE_NONE ;
 void* I915_GEM_DOMAIN_CPU ;
 scalar_t__ INT_MAX ;
 scalar_t__ IS_I965G (struct drm_i915_private*) ;
 scalar_t__ IS_I965GM (struct drm_i915_private*) ;
 scalar_t__ PAGE_SHIFT ;
 int __GFP_DMA32 ;
 int __GFP_HIGHMEM ;
 int __GFP_RECLAIM ;
 int __GFP_RECLAIMABLE ;
 int create_shmem (struct drm_i915_private*,TYPE_2__*,int) ;
 struct drm_i915_gem_object* i915_gem_object_alloc () ;
 int i915_gem_object_free (struct drm_i915_gem_object*) ;
 int i915_gem_object_init (struct drm_i915_gem_object*,int *) ;
 int i915_gem_object_set_cache_coherency (struct drm_i915_gem_object*,unsigned int) ;
 int i915_gem_shmem_ops ;
 int mapping_gfp_mask (struct address_space*) ;
 int mapping_set_gfp_mask (struct address_space*,int) ;
 scalar_t__ overflows_type (int,int ) ;
 int trace_i915_gem_object_create (struct drm_i915_gem_object*) ;

struct drm_i915_gem_object *
i915_gem_object_create_shmem(struct drm_i915_private *i915, u64 size)
{
 struct drm_i915_gem_object *obj;
 struct address_space *mapping;
 unsigned int cache_level;
 gfp_t mask;
 int ret;






 if (size >> PAGE_SHIFT > INT_MAX)
  return ERR_PTR(-E2BIG);

 if (overflows_type(size, obj->base.size))
  return ERR_PTR(-E2BIG);

 obj = i915_gem_object_alloc();
 if (!obj)
  return ERR_PTR(-ENOMEM);

 ret = create_shmem(i915, &obj->base, size);
 if (ret)
  goto fail;

 mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
 if (IS_I965GM(i915) || IS_I965G(i915)) {

  mask &= ~__GFP_HIGHMEM;
  mask |= __GFP_DMA32;
 }

 mapping = obj->base.filp->f_mapping;
 mapping_set_gfp_mask(mapping, mask);
 GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));

 i915_gem_object_init(obj, &i915_gem_shmem_ops);

 obj->write_domain = I915_GEM_DOMAIN_CPU;
 obj->read_domains = I915_GEM_DOMAIN_CPU;

 if (HAS_LLC(i915))
  cache_level = I915_CACHE_LLC;
 else
  cache_level = I915_CACHE_NONE;

 i915_gem_object_set_cache_coherency(obj, cache_level);

 trace_i915_gem_object_create(obj);

 return obj;

fail:
 i915_gem_object_free(obj);
 return ERR_PTR(ret);
}
