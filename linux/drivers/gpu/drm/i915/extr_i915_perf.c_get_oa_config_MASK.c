#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_oa_config {int /*<<< orphan*/  ref_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  metrics_lock; int /*<<< orphan*/  metrics_idr; struct i915_oa_config test_config; } ;
struct drm_i915_private {TYPE_1__ perf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct i915_oa_config* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct drm_i915_private *dev_priv,
			 int metrics_set,
			 struct i915_oa_config **out_config)
{
	int ret;

	if (metrics_set == 1) {
		*out_config = &dev_priv->perf.test_config;
		FUNC0(&dev_priv->perf.test_config.ref_count);
		return 0;
	}

	ret = FUNC2(&dev_priv->perf.metrics_lock);
	if (ret)
		return ret;

	*out_config = FUNC1(&dev_priv->perf.metrics_idr, metrics_set);
	if (!*out_config)
		ret = -EINVAL;
	else
		FUNC0(&(*out_config)->ref_count);

	FUNC3(&dev_priv->perf.metrics_lock);

	return ret;
}