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
struct TYPE_2__ {int /*<<< orphan*/ * dp_wq; } ;
struct drm_i915_private {int /*<<< orphan*/ * wq; TYPE_1__ hotplug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_i915_private *dev_priv)
{
	/*
	 * The i915 workqueue is primarily used for batched retirement of
	 * requests (and thus managing bo) once the task has been completed
	 * by the GPU. i915_retire_requests() is called directly when we
	 * need high-priority retirement, such as waiting for an explicit
	 * bo.
	 *
	 * It is also used for periodic low-priority events, such as
	 * idle-timers and recording error state.
	 *
	 * All tasks on the workqueue are expected to acquire the dev mutex
	 * so there is no point in running more than one instance of the
	 * workqueue at any time.  Use an ordered one.
	 */
	dev_priv->wq = FUNC1("i915", 0);
	if (dev_priv->wq == NULL)
		goto out_err;

	dev_priv->hotplug.dp_wq = FUNC1("i915-dp", 0);
	if (dev_priv->hotplug.dp_wq == NULL)
		goto out_free_wq;

	return 0;

out_free_wq:
	FUNC2(dev_priv->wq);
out_err:
	FUNC0("Failed to allocate workqueues.\n");

	return -ENOMEM;
}