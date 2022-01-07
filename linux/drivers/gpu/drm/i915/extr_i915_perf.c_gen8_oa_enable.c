
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int format; } ;
struct i915_perf_stream {TYPE_1__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GEN8_OACONTROL ;
 int GEN8_OA_COUNTER_ENABLE ;
 int GEN8_OA_REPORT_FORMAT_SHIFT ;
 int I915_WRITE (int ,int) ;
 int gen8_init_oa_buffer (struct i915_perf_stream*) ;

__attribute__((used)) static void gen8_oa_enable(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 u32 report_format = stream->oa_buffer.format;
 gen8_init_oa_buffer(stream);






 I915_WRITE(GEN8_OACONTROL, (report_format <<
        GEN8_OA_REPORT_FORMAT_SHIFT) |
       GEN8_OA_COUNTER_ENABLE);
}
