#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i915_perf_stream {int /*<<< orphan*/  poll_check_timer; scalar_t__ periodic; struct drm_i915_private* dev_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* oa_disable ) (struct i915_perf_stream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct drm_i915_private {TYPE_2__ perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_perf_stream*) ; 

__attribute__((used)) static void FUNC2(struct i915_perf_stream *stream)
{
	struct drm_i915_private *dev_priv = stream->dev_priv;

	dev_priv->perf.ops.oa_disable(stream);

	if (stream->periodic)
		FUNC0(&stream->poll_check_timer);
}