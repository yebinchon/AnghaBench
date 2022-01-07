
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GEN10_GT_NOA_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int RPM_CONFIG1 ;
 int gen8_configure_all_contexts (struct i915_perf_stream*,int *) ;

__attribute__((used)) static void gen10_disable_metric_set(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;


 gen8_configure_all_contexts(stream, ((void*)0));


 I915_WRITE(RPM_CONFIG1,
     I915_READ(RPM_CONFIG1) & ~GEN10_GT_NOA_ENABLE);
}
