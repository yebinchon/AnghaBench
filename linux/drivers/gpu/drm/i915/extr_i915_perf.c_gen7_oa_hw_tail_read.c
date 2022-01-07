
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GEN7_OASTATUS1 ;
 int GEN7_OASTATUS1_TAIL_MASK ;
 int I915_READ (int ) ;

__attribute__((used)) static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 u32 oastatus1 = I915_READ(GEN7_OASTATUS1);

 return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
}
