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
struct vmw_private {scalar_t__ active_display_unit; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ vmw_du_legacy ; 
 int FUNC1 (struct vmw_private*) ; 

int FUNC2(struct vmw_private *dev_priv)
{
	int ret = 0;

	/*
	 * Docs says we should take the lock before calling this function
	 * but since it destroys encoders and our destructor calls
	 * drm_encoder_cleanup which takes the lock we deadlock.
	 */
	FUNC0(dev_priv->dev);
	if (dev_priv->active_display_unit == vmw_du_legacy)
		ret = FUNC1(dev_priv);

	return ret;
}