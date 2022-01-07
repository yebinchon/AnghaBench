
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {scalar_t__ class; } ;


 int EMIT_INVALIDATE ;
 int I915_GEM_HWS_SCRATCH_ADDR ;
 scalar_t__ IS_ERR (int*) ;
 int MI_FLUSH_DW ;
 int MI_FLUSH_DW_OP_STOREDW ;
 int MI_FLUSH_DW_STORE_INDEX ;
 int MI_FLUSH_DW_USE_GTT ;
 int MI_INVALIDATE_BSD ;
 int MI_INVALIDATE_TLB ;
 int PTR_ERR (int*) ;
 scalar_t__ VIDEO_DECODE_CLASS ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int gen8_emit_flush(struct i915_request *request, u32 mode)
{
 u32 cmd, *cs;

 cs = intel_ring_begin(request, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 cmd = MI_FLUSH_DW + 1;






 cmd |= MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;

 if (mode & EMIT_INVALIDATE) {
  cmd |= MI_INVALIDATE_TLB;
  if (request->engine->class == VIDEO_DECODE_CLASS)
   cmd |= MI_INVALIDATE_BSD;
 }

 *cs++ = cmd;
 *cs++ = I915_GEM_HWS_SCRATCH_ADDR | MI_FLUSH_DW_USE_GTT;
 *cs++ = 0;
 *cs++ = 0;
 intel_ring_advance(request, cs);

 return 0;
}
