
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int vma; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;


 scalar_t__ I915_GEM_HWS_PREEMPT_ADDR ;
 scalar_t__ i915_ggtt_offset (int ) ;

__attribute__((used)) static inline u32 intel_hws_preempt_address(struct intel_engine_cs *engine)
{
 return (i915_ggtt_offset(engine->status_page.vma) +
  I915_GEM_HWS_PREEMPT_ADDR);
}
