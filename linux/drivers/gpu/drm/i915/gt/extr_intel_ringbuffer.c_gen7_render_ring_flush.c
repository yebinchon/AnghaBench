
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int gt; } ;


 int EMIT_FLUSH ;
 int EMIT_INVALIDATE ;
 int GFX_OP_PIPE_CONTROL (int) ;
 int INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH ;
 scalar_t__ IS_ERR (int*) ;
 int PIPE_CONTROL_CONST_CACHE_INVALIDATE ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_DC_FLUSH_ENABLE ;
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ;
 int PIPE_CONTROL_FLUSH_ENABLE ;
 int PIPE_CONTROL_GLOBAL_GTT_IVB ;
 int PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ;
 int PIPE_CONTROL_MEDIA_STATE_CLEAR ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ;
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ;
 int PIPE_CONTROL_STATE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TLB_INVALIDATE ;
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ;
 int PTR_ERR (int*) ;
 int gen7_render_ring_cs_stall_wa (struct i915_request*) ;
 int intel_gt_scratch_offset (int ,int ) ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen7_render_ring_flush(struct i915_request *rq, u32 mode)
{
 u32 scratch_addr =
  intel_gt_scratch_offset(rq->engine->gt,
     INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);
 u32 *cs, flags = 0;
 flags |= PIPE_CONTROL_CS_STALL;





 if (mode & EMIT_FLUSH) {
  flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
  flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
  flags |= PIPE_CONTROL_DC_FLUSH_ENABLE;
  flags |= PIPE_CONTROL_FLUSH_ENABLE;
 }
 if (mode & EMIT_INVALIDATE) {
  flags |= PIPE_CONTROL_TLB_INVALIDATE;
  flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_MEDIA_STATE_CLEAR;



  flags |= PIPE_CONTROL_QW_WRITE;
  flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;

  flags |= PIPE_CONTROL_STALL_AT_SCOREBOARD;




  gen7_render_ring_cs_stall_wa(rq);
 }

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = GFX_OP_PIPE_CONTROL(4);
 *cs++ = flags;
 *cs++ = scratch_addr;
 *cs++ = 0;
 intel_ring_advance(rq, cs);

 return 0;
}
