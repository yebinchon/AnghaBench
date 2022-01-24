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
struct TYPE_3__ {int /*<<< orphan*/  sysfs_metric; } ;
struct TYPE_4__ {int /*<<< orphan*/ * metrics_kobj; TYPE_1__ test_config; } ;
struct drm_i915_private {TYPE_2__ perf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct drm_i915_private *dev_priv)
{
	if (!dev_priv->perf.metrics_kobj)
		return;

	FUNC1(dev_priv->perf.metrics_kobj,
			   &dev_priv->perf.test_config.sysfs_metric);

	FUNC0(dev_priv->perf.metrics_kobj);
	dev_priv->perf.metrics_kobj = NULL;
}