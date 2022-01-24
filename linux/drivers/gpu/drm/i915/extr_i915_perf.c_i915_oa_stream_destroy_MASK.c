#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i915_perf_stream {int /*<<< orphan*/  oa_config; scalar_t__ ctx; int /*<<< orphan*/  wakeref; struct drm_i915_private* dev_priv; } ;
struct TYPE_7__ {scalar_t__ missed; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disable_metric_set ) (struct i915_perf_stream*) ;} ;
struct TYPE_8__ {TYPE_3__ spurious_report_rs; TYPE_1__ ops; struct i915_perf_stream* exclusive_stream; } ;
struct TYPE_6__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_4__ perf; int /*<<< orphan*/  runtime_pm; int /*<<< orphan*/  uncore; TYPE_2__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_perf_stream*) ; 

__attribute__((used)) static void FUNC10(struct i915_perf_stream *stream)
{
	struct drm_i915_private *dev_priv = stream->dev_priv;

	FUNC0(stream != dev_priv->perf.exclusive_stream);

	/*
	 * Unset exclusive_stream first, it will be checked while disabling
	 * the metric set on gen8+.
	 */
	FUNC5(&dev_priv->drm.struct_mutex);
	dev_priv->perf.exclusive_stream = NULL;
	dev_priv->perf.ops.disable_metric_set(stream);
	FUNC6(&dev_priv->drm.struct_mutex);

	FUNC2(stream);

	FUNC4(&dev_priv->uncore, FORCEWAKE_ALL);
	FUNC3(&dev_priv->runtime_pm, stream->wakeref);

	if (stream->ctx)
		FUNC7(stream);

	FUNC8(dev_priv, stream->oa_config);

	if (dev_priv->perf.spurious_report_rs.missed) {
		FUNC1("%d spurious OA report notices suppressed due to ratelimiting\n",
			 dev_priv->perf.spurious_report_rs.missed);
	}
}