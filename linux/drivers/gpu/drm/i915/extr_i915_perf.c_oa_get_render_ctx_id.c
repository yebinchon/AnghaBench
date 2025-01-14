
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int lrc_desc; int state; } ;
struct i915_perf_stream {int specific_ctx_id; unsigned int specific_ctx_id_mask; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int GEN11_ENGINE_CLASS_SHIFT ;
 int GEN11_ENGINE_CLASS_WIDTH ;
 int GEN11_ENGINE_INSTANCE_SHIFT ;
 unsigned int GEN11_ENGINE_INSTANCE_WIDTH ;
 int GEN11_SW_CTX_ID_SHIFT ;
 unsigned int GEN11_SW_CTX_ID_WIDTH ;
 unsigned int GEN8_CTX_ID_WIDTH ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_ERR (struct intel_context*) ;
 int MISSING_CASE (int) ;
 int PTR_ERR (struct intel_context*) ;
 int USES_GUC_SUBMISSION (struct drm_i915_private*) ;
 int i915_ggtt_offset (int ) ;
 int lower_32_bits (int ) ;
 struct intel_context* oa_pin_context (struct i915_perf_stream*) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
{
 struct drm_i915_private *i915 = stream->dev_priv;
 struct intel_context *ce;

 ce = oa_pin_context(stream);
 if (IS_ERR(ce))
  return PTR_ERR(ce);

 switch (INTEL_GEN(i915)) {
 case 7: {




  stream->specific_ctx_id = i915_ggtt_offset(ce->state);
  stream->specific_ctx_id_mask = 0;
  break;
 }

 case 8:
 case 9:
 case 10:
  if (USES_GUC_SUBMISSION(i915)) {
   stream->specific_ctx_id =
    lower_32_bits(ce->lrc_desc) >> 12;





   stream->specific_ctx_id_mask =
    (1U << (GEN8_CTX_ID_WIDTH - 1)) - 1;
  } else {
   stream->specific_ctx_id_mask =
    (1U << GEN8_CTX_ID_WIDTH) - 1;
   stream->specific_ctx_id =
    upper_32_bits(ce->lrc_desc);
   stream->specific_ctx_id &=
    stream->specific_ctx_id_mask;
  }
  break;

 case 11: {
  stream->specific_ctx_id_mask =
   ((1U << GEN11_SW_CTX_ID_WIDTH) - 1) << (GEN11_SW_CTX_ID_SHIFT - 32) |
   ((1U << GEN11_ENGINE_INSTANCE_WIDTH) - 1) << (GEN11_ENGINE_INSTANCE_SHIFT - 32) |
   ((1 << GEN11_ENGINE_CLASS_WIDTH) - 1) << (GEN11_ENGINE_CLASS_SHIFT - 32);
  stream->specific_ctx_id = upper_32_bits(ce->lrc_desc);
  stream->specific_ctx_id &=
   stream->specific_ctx_id_mask;
  break;
 }

 default:
  MISSING_CASE(INTEL_GEN(i915));
 }

 DRM_DEBUG_DRIVER("filtering on ctx_id=0x%x ctx_id_mask=0x%x\n",
    stream->specific_ctx_id,
    stream->specific_ctx_id_mask);

 return 0;
}
