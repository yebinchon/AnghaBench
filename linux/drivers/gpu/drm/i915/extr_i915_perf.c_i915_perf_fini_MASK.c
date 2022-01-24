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
struct TYPE_2__ {int initialized; int /*<<< orphan*/  ops; int /*<<< orphan*/  sysctl_header; int /*<<< orphan*/  metrics_idr; } ;
struct drm_i915_private {TYPE_1__ perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  destroy_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_i915_private *dev_priv)
{
	if (!dev_priv->perf.initialized)
		return;

	FUNC1(&dev_priv->perf.metrics_idr, destroy_config, dev_priv);
	FUNC0(&dev_priv->perf.metrics_idr);

	FUNC3(dev_priv->perf.sysctl_header);

	FUNC2(&dev_priv->perf.ops, 0, sizeof(dev_priv->perf.ops));

	dev_priv->perf.initialized = false;
}