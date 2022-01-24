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
struct vmw_private {int dummy_query_bo_pinned; int /*<<< orphan*/  dummy_query_bo; int /*<<< orphan*/  pinned_bo; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,int,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct vmw_private *dev_priv)
{
	FUNC0("Can't unpin query buffer. Trying to recover.\n");

	(void) FUNC2(dev_priv, false, true, 0, false, 10*HZ);
	FUNC1(dev_priv->pinned_bo, false);
	if (dev_priv->dummy_query_bo_pinned) {
		FUNC1(dev_priv->dummy_query_bo, false);
		dev_priv->dummy_query_bo_pinned = false;
	}
}