
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int wa_tail; } ;


 int MI_ARB_CHECK ;
 int MI_NOOP ;
 int intel_ring_offset (struct i915_request*,int *) ;

__attribute__((used)) static u32 *gen8_emit_wa_tail(struct i915_request *request, u32 *cs)
{

 *cs++ = MI_ARB_CHECK;
 *cs++ = MI_NOOP;
 request->wa_tail = intel_ring_offset(request, cs);

 return cs;
}
