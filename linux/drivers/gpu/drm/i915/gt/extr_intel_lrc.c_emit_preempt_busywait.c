
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int engine; } ;


 int MI_SEMAPHORE_GLOBAL_GTT ;
 int MI_SEMAPHORE_POLL ;
 int MI_SEMAPHORE_SAD_EQ_SDD ;
 int MI_SEMAPHORE_WAIT ;
 int intel_hws_preempt_address (int ) ;

__attribute__((used)) static u32 *emit_preempt_busywait(struct i915_request *request, u32 *cs)
{
 *cs++ = MI_SEMAPHORE_WAIT |
  MI_SEMAPHORE_GLOBAL_GTT |
  MI_SEMAPHORE_POLL |
  MI_SEMAPHORE_SAD_EQ_SDD;
 *cs++ = 0;
 *cs++ = intel_hws_preempt_address(request->engine);
 *cs++ = 0;

 return cs;
}
