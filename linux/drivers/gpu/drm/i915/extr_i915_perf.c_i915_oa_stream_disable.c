
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_perf_stream {int poll_check_timer; scalar_t__ periodic; struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int (* oa_disable ) (struct i915_perf_stream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct drm_i915_private {TYPE_2__ perf; } ;


 int hrtimer_cancel (int *) ;
 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static void i915_oa_stream_disable(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;

 dev_priv->perf.ops.oa_disable(stream);

 if (stream->periodic)
  hrtimer_cancel(&stream->poll_check_timer);
}
