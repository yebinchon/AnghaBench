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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {scalar_t__ cman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 

void FUNC2(struct vmw_private *dev_priv, uint32_t bytes)
{
	if (dev_priv->cman)
		FUNC0(dev_priv->cman, bytes, NULL, false);
	else
		FUNC1(dev_priv, bytes);
}