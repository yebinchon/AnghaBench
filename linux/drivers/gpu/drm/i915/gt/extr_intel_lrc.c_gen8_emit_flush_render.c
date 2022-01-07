
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {int gt; } ;
struct i915_request {int i915; struct intel_engine_cs* engine; } ;


 int EMIT_FLUSH ;
 int EMIT_INVALIDATE ;
 int INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH ;
 scalar_t__ IS_ERR (int*) ;
 scalar_t__ IS_GEN (int ,int) ;
 scalar_t__ IS_KBL_REVID (int ,int ,int ) ;
 int KBL_REVID_B0 ;
 int PIPE_CONTROL_CONST_CACHE_INVALIDATE ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_DC_FLUSH_ENABLE ;
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ;
 int PIPE_CONTROL_FLUSH_ENABLE ;
 int PIPE_CONTROL_GLOBAL_GTT_IVB ;
 int PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ;
 int PIPE_CONTROL_STATE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TLB_INVALIDATE ;
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ;
 int PTR_ERR (int*) ;
 int* gen8_emit_pipe_control (int*,int,int) ;
 int intel_gt_scratch_offset (int ,int ) ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int gen8_emit_flush_render(struct i915_request *request,
      u32 mode)
{
 struct intel_engine_cs *engine = request->engine;
 u32 scratch_addr =
  intel_gt_scratch_offset(engine->gt,
     INTEL_GT_SCRATCH_FIELD_RENDER_FLUSH);
 bool vf_flush_wa = 0, dc_flush_wa = 0;
 u32 *cs, flags = 0;
 int len;

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
  flags |= PIPE_CONTROL_QW_WRITE;
  flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;





  if (IS_GEN(request->i915, 9))
   vf_flush_wa = 1;


  if (IS_KBL_REVID(request->i915, 0, KBL_REVID_B0))
   dc_flush_wa = 1;
 }

 len = 6;

 if (vf_flush_wa)
  len += 6;

 if (dc_flush_wa)
  len += 12;

 cs = intel_ring_begin(request, len);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 if (vf_flush_wa)
  cs = gen8_emit_pipe_control(cs, 0, 0);

 if (dc_flush_wa)
  cs = gen8_emit_pipe_control(cs, PIPE_CONTROL_DC_FLUSH_ENABLE,
         0);

 cs = gen8_emit_pipe_control(cs, flags, scratch_addr);

 if (dc_flush_wa)
  cs = gen8_emit_pipe_control(cs, PIPE_CONTROL_CS_STALL, 0);

 intel_ring_advance(request, cs);

 return 0;
}
