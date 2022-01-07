
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int gt; } ;


 int INTEL_GT_SCRATCH_FIELD_CLEAR_SLM_WA ;
 int intel_gt_scratch_offset (int ,int ) ;

__attribute__((used)) static u32 slm_offset(struct intel_engine_cs *engine)
{
 return intel_gt_scratch_offset(engine->gt,
           INTEL_GT_SCRATCH_FIELD_CLEAR_SLM_WA);
}
