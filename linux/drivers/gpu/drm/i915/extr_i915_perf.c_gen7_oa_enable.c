
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int format; } ;
struct i915_perf_stream {int specific_ctx_id; int periodic; int period_exponent; TYPE_1__ oa_buffer; struct i915_gem_context* ctx; struct drm_i915_private* dev_priv; } ;
struct i915_gem_context {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int GEN7_OACONTROL ;
 int GEN7_OACONTROL_CTX_MASK ;
 int GEN7_OACONTROL_ENABLE ;
 int GEN7_OACONTROL_FORMAT_SHIFT ;
 int GEN7_OACONTROL_PER_CTX_ENABLE ;
 int GEN7_OACONTROL_TIMER_ENABLE ;
 int GEN7_OACONTROL_TIMER_PERIOD_SHIFT ;
 int I915_WRITE (int ,int) ;
 int gen7_init_oa_buffer (struct i915_perf_stream*) ;

__attribute__((used)) static void gen7_oa_enable(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 struct i915_gem_context *ctx = stream->ctx;
 u32 ctx_id = stream->specific_ctx_id;
 bool periodic = stream->periodic;
 u32 period_exponent = stream->period_exponent;
 u32 report_format = stream->oa_buffer.format;
 gen7_init_oa_buffer(stream);

 I915_WRITE(GEN7_OACONTROL,
     (ctx_id & GEN7_OACONTROL_CTX_MASK) |
     (period_exponent <<
      GEN7_OACONTROL_TIMER_PERIOD_SHIFT) |
     (periodic ? GEN7_OACONTROL_TIMER_ENABLE : 0) |
     (report_format << GEN7_OACONTROL_FORMAT_SHIFT) |
     (ctx ? GEN7_OACONTROL_PER_CTX_ENABLE : 0) |
     GEN7_OACONTROL_ENABLE);
}
