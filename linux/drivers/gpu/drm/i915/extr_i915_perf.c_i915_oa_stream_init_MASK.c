#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct perf_open_properties {int sample_flags; size_t oa_format; int /*<<< orphan*/  metrics_set; int /*<<< orphan*/  oa_period_exponent; scalar_t__ oa_periodic; } ;
struct TYPE_8__ {int format_size; int /*<<< orphan*/  ptr_lock; int /*<<< orphan*/  format; } ;
struct TYPE_12__ {int /*<<< orphan*/  function; } ;
struct i915_perf_stream {int sample_size; int sample_flags; scalar_t__ ctx; int /*<<< orphan*/  wakeref; int /*<<< orphan*/  oa_config; TYPE_2__ oa_buffer; int /*<<< orphan*/  poll_wq; TYPE_6__ poll_check_timer; int /*<<< orphan*/ * ops; int /*<<< orphan*/  period_exponent; scalar_t__ periodic; struct drm_i915_private* dev_priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_9__ {int (* enable_metric_set ) (struct i915_perf_stream*) ;int /*<<< orphan*/  (* disable_metric_set ) (struct i915_perf_stream*) ;} ;
struct TYPE_10__ {TYPE_3__ ops; struct i915_perf_stream* exclusive_stream; TYPE_1__* oa_formats; int /*<<< orphan*/  metrics_kobj; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  uncore; TYPE_5__ drm; TYPE_4__ perf; } ;
struct drm_i915_perf_record_header {int dummy; } ;
struct drm_i915_perf_open_param {int dummy; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int SAMPLE_OA_REPORT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_perf_stream*) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  i915_oa_stream_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  oa_poll_check_timer_cb ; 
 int /*<<< orphan*/  FUNC14 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC18 (struct i915_perf_stream*) ; 

__attribute__((used)) static int FUNC19(struct i915_perf_stream *stream,
			       struct drm_i915_perf_open_param *param,
			       struct perf_open_properties *props)
{
	struct drm_i915_private *dev_priv = stream->dev_priv;
	int format_size;
	int ret;

	/* If the sysfs metrics/ directory wasn't registered for some
	 * reason then don't let userspace try their luck with config
	 * IDs
	 */
	if (!dev_priv->perf.metrics_kobj) {
		FUNC0("OA metrics weren't advertised via sysfs\n");
		return -EINVAL;
	}

	if (!(props->sample_flags & SAMPLE_OA_REPORT)) {
		FUNC0("Only OA report sampling supported\n");
		return -EINVAL;
	}

	if (!dev_priv->perf.ops.enable_metric_set) {
		FUNC0("OA unit not supported\n");
		return -ENODEV;
	}

	/* To avoid the complexity of having to accurately filter
	 * counter reports and marshal to the appropriate client
	 * we currently only allow exclusive access
	 */
	if (dev_priv->perf.exclusive_stream) {
		FUNC0("OA unit already in use\n");
		return -EBUSY;
	}

	if (!props->oa_format) {
		FUNC0("OA report format not specified\n");
		return -EINVAL;
	}

	stream->sample_size = sizeof(struct drm_i915_perf_record_header);

	format_size = dev_priv->perf.oa_formats[props->oa_format].size;

	stream->sample_flags |= SAMPLE_OA_REPORT;
	stream->sample_size += format_size;

	stream->oa_buffer.format_size = format_size;
	if (FUNC1(stream->oa_buffer.format_size == 0))
		return -EINVAL;

	stream->oa_buffer.format =
		dev_priv->perf.oa_formats[props->oa_format].format;

	stream->periodic = props->oa_periodic;
	if (stream->periodic)
		stream->period_exponent = props->oa_period_exponent;

	if (stream->ctx) {
		ret = FUNC13(stream);
		if (ret) {
			FUNC0("Invalid context id to filter with\n");
			return ret;
		}
	}

	ret = FUNC4(dev_priv, props->metrics_set, &stream->oa_config);
	if (ret) {
		FUNC0("Invalid OA config id=%i\n", props->metrics_set);
		goto err_config;
	}

	/* PRM - observability performance counters:
	 *
	 *   OACONTROL, performance counter enable, note:
	 *
	 *   "When this bit is set, in order to have coherent counts,
	 *   RC6 power state and trunk clock gating must be disabled.
	 *   This can be achieved by programming MMIO registers as
	 *   0xA094=0 and 0xA090[31]=1"
	 *
	 *   In our case we are expecting that taking pm + FORCEWAKE
	 *   references will effectively disable RC6.
	 */
	stream->wakeref = FUNC8(&dev_priv->runtime_pm);
	FUNC10(&dev_priv->uncore, FORCEWAKE_ALL);

	ret = FUNC2(stream);
	if (ret)
		goto err_oa_buf_alloc;

	ret = FUNC6(&dev_priv->drm);
	if (ret)
		goto err_lock;

	stream->ops = &i915_oa_stream_ops;
	dev_priv->perf.exclusive_stream = stream;

	ret = dev_priv->perf.ops.enable_metric_set(stream);
	if (ret) {
		FUNC0("Unable to enable metric set\n");
		goto err_enable;
	}

	FUNC12(&dev_priv->drm.struct_mutex);

	FUNC5(&stream->poll_check_timer,
		     CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	stream->poll_check_timer.function = oa_poll_check_timer_cb;
	FUNC7(&stream->poll_wq);
	FUNC16(&stream->oa_buffer.ptr_lock);

	return 0;

err_enable:
	dev_priv->perf.exclusive_stream = NULL;
	dev_priv->perf.ops.disable_metric_set(stream);
	FUNC12(&dev_priv->drm.struct_mutex);

err_lock:
	FUNC3(stream);

err_oa_buf_alloc:
	FUNC15(dev_priv, stream->oa_config);

	FUNC11(&dev_priv->uncore, FORCEWAKE_ALL);
	FUNC9(&dev_priv->runtime_pm, stream->wakeref);

err_config:
	if (stream->ctx)
		FUNC14(stream);

	return ret;
}