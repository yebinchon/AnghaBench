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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *) ; 
 struct vmw_private* FUNC2 (struct drm_device*) ; 

int FUNC3(struct drm_device *dev)
{
	struct vmw_private *dev_priv = FUNC2(dev);
	int ret;

	if (FUNC0(!dev_priv->suspend_state))
		return 0;

	ret = FUNC1(dev, dev_priv->suspend_state);
	dev_priv->suspend_state = NULL;

	return ret;
}