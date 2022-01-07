
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated; } ;
struct reloc_cache {int page; int gen; int has_fence; scalar_t__ rq_size; int * rq; TYPE_1__ node; int needs_unfenced; int use_64bit_reloc; int has_llc; scalar_t__ vaddr; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int unfenced_needs_alignment; } ;


 int HAS_64BIT_RELOC (struct drm_i915_private*) ;
 int HAS_LLC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_2__* INTEL_INFO (struct drm_i915_private*) ;

__attribute__((used)) static void reloc_cache_init(struct reloc_cache *cache,
        struct drm_i915_private *i915)
{
 cache->page = -1;
 cache->vaddr = 0;

 cache->gen = INTEL_GEN(i915);
 cache->has_llc = HAS_LLC(i915);
 cache->use_64bit_reloc = HAS_64BIT_RELOC(i915);
 cache->has_fence = cache->gen < 4;
 cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 cache->node.allocated = 0;
 cache->rq = ((void*)0);
 cache->rq_size = 0;
}
