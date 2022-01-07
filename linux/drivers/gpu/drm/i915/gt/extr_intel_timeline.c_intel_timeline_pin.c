
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int hwsp_ggtt; int hwsp_cacheline; int pin_count; scalar_t__ hwsp_offset; } ;


 int PIN_GLOBAL ;
 int PIN_HIGH ;
 int __i915_vma_unpin (int ) ;
 scalar_t__ atomic_add_unless (int *,int,int ) ;
 scalar_t__ atomic_fetch_inc (int *) ;
 int cacheline_acquire (int ) ;
 int cacheline_release (int ) ;
 scalar_t__ i915_ggtt_offset (int ) ;
 int i915_vma_pin (int ,int ,int ,int) ;
 scalar_t__ offset_in_page (scalar_t__) ;

int intel_timeline_pin(struct intel_timeline *tl)
{
 int err;

 if (atomic_add_unless(&tl->pin_count, 1, 0))
  return 0;

 err = i915_vma_pin(tl->hwsp_ggtt, 0, 0, PIN_GLOBAL | PIN_HIGH);
 if (err)
  return err;

 tl->hwsp_offset =
  i915_ggtt_offset(tl->hwsp_ggtt) +
  offset_in_page(tl->hwsp_offset);

 cacheline_acquire(tl->hwsp_cacheline);
 if (atomic_fetch_inc(&tl->pin_count)) {
  cacheline_release(tl->hwsp_cacheline);
  __i915_vma_unpin(tl->hwsp_ggtt);
 }

 return 0;
}
