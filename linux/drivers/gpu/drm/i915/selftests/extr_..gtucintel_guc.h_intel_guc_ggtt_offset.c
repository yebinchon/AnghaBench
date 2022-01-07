
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_guc {int dummy; } ;
struct i915_vma {int size; } ;


 int GEM_BUG_ON (int) ;
 int GUC_GGTT_TOP ;
 scalar_t__ i915_ggtt_offset (struct i915_vma*) ;
 scalar_t__ i915_ggtt_pin_bias (struct i915_vma*) ;
 int range_overflows_t (int ,scalar_t__,int ,int ) ;
 int u64 ;

__attribute__((used)) static inline u32 intel_guc_ggtt_offset(struct intel_guc *guc,
     struct i915_vma *vma)
{
 u32 offset = i915_ggtt_offset(vma);

 GEM_BUG_ON(offset < i915_ggtt_pin_bias(vma));
 GEM_BUG_ON(range_overflows_t(u64, offset, vma->size, GUC_GGTT_TOP));

 return offset;
}
