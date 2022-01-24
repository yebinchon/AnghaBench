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
struct vmw_private {scalar_t__ cman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__,int) ; 

int FUNC2(struct vmw_private *dev_priv, bool interruptible)
{
	FUNC0();

	if (dev_priv->cman)
		return FUNC1(dev_priv->cman, interruptible);
	else
		return 0;
}