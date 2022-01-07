
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_request {int dummy; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 scalar_t__ IS_ERR (int *) ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ;
 int PTR_ERR (int *) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen7_render_ring_cs_stall_wa(struct i915_request *rq)
{
 u32 *cs;

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = GFX_OP_PIPE_CONTROL(4);
 *cs++ = PIPE_CONTROL_CS_STALL | PIPE_CONTROL_STALL_AT_SCOREBOARD;
 *cs++ = 0;
 *cs++ = 0;
 intel_ring_advance(rq, cs);

 return 0;
}
