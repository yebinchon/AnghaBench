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
struct vmw_private {int /*<<< orphan*/  bdev; scalar_t__ has_mob; scalar_t__ cman; int /*<<< orphan*/  dummy_query_bo; int /*<<< orphan*/ * pinned_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMW_PL_MOB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 

__attribute__((used)) static void FUNC5(struct vmw_private *dev_priv)
{
	/*
	 * Previous destructions should've released
	 * the pinned bo.
	 */

	FUNC0(dev_priv->pinned_bo != NULL);

	FUNC2(&dev_priv->dummy_query_bo);
	if (dev_priv->cman)
		FUNC3(dev_priv->cman);

	if (dev_priv->has_mob) {
		FUNC1(&dev_priv->bdev, VMW_PL_MOB);
		FUNC4(dev_priv);
	}
}