
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_perf_stream {int poll_check_timer; scalar_t__ periodic; struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int (* oa_enable ) (struct i915_perf_stream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct drm_i915_private {TYPE_2__ perf; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int POLL_PERIOD ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int ) ;
 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static void i915_oa_stream_enable(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;

 dev_priv->perf.ops.oa_enable(stream);

 if (stream->periodic)
  hrtimer_start(&stream->poll_check_timer,
         ns_to_ktime(POLL_PERIOD),
         HRTIMER_MODE_REL_PINNED);
}
