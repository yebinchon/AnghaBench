
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_timeline_hwsp {TYPE_1__* gt; TYPE_2__* vma; } ;
struct intel_timeline_cacheline {int active; int vaddr; struct intel_timeline_hwsp* hwsp; } ;
struct TYPE_4__ {int obj; } ;
struct TYPE_3__ {int i915; } ;


 unsigned int BIT (int ) ;
 int CACHELINE_BITS ;
 int ENOMEM ;
 struct intel_timeline_cacheline* ERR_CAST (void*) ;
 struct intel_timeline_cacheline* ERR_PTR (int ) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int I915_MAP_WB ;
 scalar_t__ IS_ERR (void*) ;
 int __cacheline_active ;
 int __cacheline_retire ;
 int i915_active_init (int ,int *,int ,int ) ;
 void* i915_gem_object_pin_map (int ,int ) ;
 int i915_vma_get (TYPE_2__*) ;
 int kfree (struct intel_timeline_cacheline*) ;
 struct intel_timeline_cacheline* kmalloc (int,int ) ;
 int page_pack_bits (void*,unsigned int) ;

__attribute__((used)) static struct intel_timeline_cacheline *
cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
{
 struct intel_timeline_cacheline *cl;
 void *vaddr;

 GEM_BUG_ON(cacheline >= BIT(CACHELINE_BITS));

 cl = kmalloc(sizeof(*cl), GFP_KERNEL);
 if (!cl)
  return ERR_PTR(-ENOMEM);

 vaddr = i915_gem_object_pin_map(hwsp->vma->obj, I915_MAP_WB);
 if (IS_ERR(vaddr)) {
  kfree(cl);
  return ERR_CAST(vaddr);
 }

 i915_vma_get(hwsp->vma);
 cl->hwsp = hwsp;
 cl->vaddr = page_pack_bits(vaddr, cacheline);

 i915_active_init(hwsp->gt->i915, &cl->active,
    __cacheline_active, __cacheline_retire);

 return cl;
}
