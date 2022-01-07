
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vma; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;


 int flush_cs_tlb (struct intel_engine_cs*) ;
 int i915_ggtt_offset (int ) ;
 int set_hwsp (struct intel_engine_cs*,int ) ;
 int set_hwstam (struct intel_engine_cs*,unsigned int) ;

__attribute__((used)) static void ring_setup_status_page(struct intel_engine_cs *engine)
{
 set_hwsp(engine, i915_ggtt_offset(engine->status_page.vma));
 set_hwstam(engine, ~0u);

 flush_cs_tlb(engine);
}
