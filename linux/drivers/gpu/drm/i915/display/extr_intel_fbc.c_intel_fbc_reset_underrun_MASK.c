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
struct TYPE_2__ {int underrun_detected; char* no_fbc_reason; int /*<<< orphan*/  lock; int /*<<< orphan*/  underrun_work; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_i915_private *dev_priv)
{
	int ret;

	FUNC1(&dev_priv->fbc.underrun_work);

	ret = FUNC2(&dev_priv->fbc.lock);
	if (ret)
		return ret;

	if (dev_priv->fbc.underrun_detected) {
		FUNC0("Re-allowing FBC after fifo underrun\n");
		dev_priv->fbc.no_fbc_reason = "FIFO underrun cleared";
	}

	dev_priv->fbc.underrun_detected = false;
	FUNC3(&dev_priv->fbc.lock);

	return 0;
}