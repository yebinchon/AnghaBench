
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline_hwsp {unsigned long long free_bitmap; int free_link; int vma; struct intel_gt_timelines* gt_timelines; } ;
struct intel_gt_timelines {int hwsp_lock; int hwsp_free_list; } ;


 int BITS_PER_TYPE (unsigned long long) ;
 unsigned long long BIT_ULL (int) ;
 int GEM_BUG_ON (int) ;
 int i915_vma_put (int ) ;
 int kfree (struct intel_timeline_hwsp*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __idle_hwsp_free(struct intel_timeline_hwsp *hwsp, int cacheline)
{
 struct intel_gt_timelines *gt = hwsp->gt_timelines;
 unsigned long flags;

 spin_lock_irqsave(&gt->hwsp_lock, flags);


 if (!hwsp->free_bitmap)
  list_add_tail(&hwsp->free_link, &gt->hwsp_free_list);

 GEM_BUG_ON(cacheline >= BITS_PER_TYPE(hwsp->free_bitmap));
 hwsp->free_bitmap |= BIT_ULL(cacheline);


 if (hwsp->free_bitmap == ~0ull) {
  i915_vma_put(hwsp->vma);
  list_del(&hwsp->free_link);
  kfree(hwsp);
 }

 spin_unlock_irqrestore(&gt->hwsp_lock, flags);
}
