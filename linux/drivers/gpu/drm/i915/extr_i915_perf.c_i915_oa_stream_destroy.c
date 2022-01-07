
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct i915_perf_stream {int oa_config; scalar_t__ ctx; int wakeref; struct drm_i915_private* dev_priv; } ;
struct TYPE_7__ {scalar_t__ missed; } ;
struct TYPE_5__ {int (* disable_metric_set ) (struct i915_perf_stream*) ;} ;
struct TYPE_8__ {TYPE_3__ spurious_report_rs; TYPE_1__ ops; struct i915_perf_stream* exclusive_stream; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_4__ perf; int runtime_pm; int uncore; TYPE_2__ drm; } ;


 int BUG_ON (int) ;
 int DRM_NOTE (char*,scalar_t__) ;
 int FORCEWAKE_ALL ;
 int free_oa_buffer (struct i915_perf_stream*) ;
 int intel_runtime_pm_put (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oa_put_render_ctx_id (struct i915_perf_stream*) ;
 int put_oa_config (struct drm_i915_private*,int ) ;
 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;

 BUG_ON(stream != dev_priv->perf.exclusive_stream);





 mutex_lock(&dev_priv->drm.struct_mutex);
 dev_priv->perf.exclusive_stream = ((void*)0);
 dev_priv->perf.ops.disable_metric_set(stream);
 mutex_unlock(&dev_priv->drm.struct_mutex);

 free_oa_buffer(stream);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 intel_runtime_pm_put(&dev_priv->runtime_pm, stream->wakeref);

 if (stream->ctx)
  oa_put_render_ctx_id(stream);

 put_oa_config(dev_priv, stream->oa_config);

 if (dev_priv->perf.spurious_report_rs.missed) {
  DRM_NOTE("%d spurious OA report notices suppressed due to ratelimiting\n",
    dev_priv->perf.spurious_report_rs.missed);
 }
}
