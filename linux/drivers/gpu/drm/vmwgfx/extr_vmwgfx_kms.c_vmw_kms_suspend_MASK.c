#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmw_private {int /*<<< orphan*/ * suspend_state; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct drm_device*) ; 
 struct vmw_private* FUNC4 (struct drm_device*) ; 

int FUNC5(struct drm_device *dev)
{
	struct vmw_private *dev_priv = FUNC4(dev);

	dev_priv->suspend_state = FUNC3(dev);
	if (FUNC1(dev_priv->suspend_state)) {
		int ret = FUNC2(dev_priv->suspend_state);

		FUNC0("Failed kms suspend: %d\n", ret);
		dev_priv->suspend_state = NULL;

		return ret;
	}

	return 0;
}