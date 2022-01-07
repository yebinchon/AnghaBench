
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct perf_open_properties {int sample_flags; size_t oa_format; int metrics_set; int oa_period_exponent; scalar_t__ oa_periodic; } ;
struct TYPE_8__ {int format_size; int ptr_lock; int format; } ;
struct TYPE_12__ {int function; } ;
struct i915_perf_stream {int sample_size; int sample_flags; scalar_t__ ctx; int wakeref; int oa_config; TYPE_2__ oa_buffer; int poll_wq; TYPE_6__ poll_check_timer; int * ops; int period_exponent; scalar_t__ periodic; struct drm_i915_private* dev_priv; } ;
struct TYPE_11__ {int struct_mutex; } ;
struct TYPE_9__ {int (* enable_metric_set ) (struct i915_perf_stream*) ;int (* disable_metric_set ) (struct i915_perf_stream*) ;} ;
struct TYPE_10__ {TYPE_3__ ops; struct i915_perf_stream* exclusive_stream; TYPE_1__* oa_formats; int metrics_kobj; } ;
struct drm_i915_private {int runtime_pm; int uncore; TYPE_5__ drm; TYPE_4__ perf; } ;
struct drm_i915_perf_record_header {int dummy; } ;
struct drm_i915_perf_open_param {int dummy; } ;
struct TYPE_7__ {int size; int format; } ;


 int CLOCK_MONOTONIC ;
 int DRM_DEBUG (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int FORCEWAKE_ALL ;
 int HRTIMER_MODE_REL ;
 int SAMPLE_OA_REPORT ;
 scalar_t__ WARN_ON (int) ;
 int alloc_oa_buffer (struct i915_perf_stream*) ;
 int free_oa_buffer (struct i915_perf_stream*) ;
 int get_oa_config (struct drm_i915_private*,int ,int *) ;
 int hrtimer_init (TYPE_6__*,int ,int ) ;
 int i915_mutex_lock_interruptible (TYPE_5__*) ;
 int i915_oa_stream_ops ;
 int init_waitqueue_head (int *) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int mutex_unlock (int *) ;
 int oa_get_render_ctx_id (struct i915_perf_stream*) ;
 int oa_poll_check_timer_cb ;
 int oa_put_render_ctx_id (struct i915_perf_stream*) ;
 int put_oa_config (struct drm_i915_private*,int ) ;
 int spin_lock_init (int *) ;
 int stub1 (struct i915_perf_stream*) ;
 int stub2 (struct i915_perf_stream*) ;

__attribute__((used)) static int i915_oa_stream_init(struct i915_perf_stream *stream,
          struct drm_i915_perf_open_param *param,
          struct perf_open_properties *props)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 int format_size;
 int ret;





 if (!dev_priv->perf.metrics_kobj) {
  DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
  return -EINVAL;
 }

 if (!(props->sample_flags & SAMPLE_OA_REPORT)) {
  DRM_DEBUG("Only OA report sampling supported\n");
  return -EINVAL;
 }

 if (!dev_priv->perf.ops.enable_metric_set) {
  DRM_DEBUG("OA unit not supported\n");
  return -ENODEV;
 }





 if (dev_priv->perf.exclusive_stream) {
  DRM_DEBUG("OA unit already in use\n");
  return -EBUSY;
 }

 if (!props->oa_format) {
  DRM_DEBUG("OA report format not specified\n");
  return -EINVAL;
 }

 stream->sample_size = sizeof(struct drm_i915_perf_record_header);

 format_size = dev_priv->perf.oa_formats[props->oa_format].size;

 stream->sample_flags |= SAMPLE_OA_REPORT;
 stream->sample_size += format_size;

 stream->oa_buffer.format_size = format_size;
 if (WARN_ON(stream->oa_buffer.format_size == 0))
  return -EINVAL;

 stream->oa_buffer.format =
  dev_priv->perf.oa_formats[props->oa_format].format;

 stream->periodic = props->oa_periodic;
 if (stream->periodic)
  stream->period_exponent = props->oa_period_exponent;

 if (stream->ctx) {
  ret = oa_get_render_ctx_id(stream);
  if (ret) {
   DRM_DEBUG("Invalid context id to filter with\n");
   return ret;
  }
 }

 ret = get_oa_config(dev_priv, props->metrics_set, &stream->oa_config);
 if (ret) {
  DRM_DEBUG("Invalid OA config id=%i\n", props->metrics_set);
  goto err_config;
 }
 stream->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);

 ret = alloc_oa_buffer(stream);
 if (ret)
  goto err_oa_buf_alloc;

 ret = i915_mutex_lock_interruptible(&dev_priv->drm);
 if (ret)
  goto err_lock;

 stream->ops = &i915_oa_stream_ops;
 dev_priv->perf.exclusive_stream = stream;

 ret = dev_priv->perf.ops.enable_metric_set(stream);
 if (ret) {
  DRM_DEBUG("Unable to enable metric set\n");
  goto err_enable;
 }

 mutex_unlock(&dev_priv->drm.struct_mutex);

 hrtimer_init(&stream->poll_check_timer,
       CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 stream->poll_check_timer.function = oa_poll_check_timer_cb;
 init_waitqueue_head(&stream->poll_wq);
 spin_lock_init(&stream->oa_buffer.ptr_lock);

 return 0;

err_enable:
 dev_priv->perf.exclusive_stream = ((void*)0);
 dev_priv->perf.ops.disable_metric_set(stream);
 mutex_unlock(&dev_priv->drm.struct_mutex);

err_lock:
 free_oa_buffer(stream);

err_oa_buf_alloc:
 put_oa_config(dev_priv, stream->oa_config);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 intel_runtime_pm_put(&dev_priv->runtime_pm, stream->wakeref);

err_config:
 if (stream->ctx)
  oa_put_render_ctx_id(stream);

 return ret;
}
