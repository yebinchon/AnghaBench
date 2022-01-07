
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int scratch; } ;
typedef enum intel_gt_scratch_field { ____Placeholder_intel_gt_scratch_field } intel_gt_scratch_field ;


 int i915_ggtt_offset (int ) ;

__attribute__((used)) static inline u32 intel_gt_scratch_offset(const struct intel_gt *gt,
       enum intel_gt_scratch_field field)
{
 return i915_ggtt_offset(gt->scratch) + field;
}
