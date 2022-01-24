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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/ * pd; TYPE_1__* rn_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_uninit ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

void FUNC9(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC6(dev);

	FUNC2(priv, "cleaning up ib_dev\n");
	/*
	 * We must make sure there are no more (path) completions
	 * that may wish to touch priv fields that are no longer valid
	 */
	FUNC3(dev);

	FUNC5(dev);
	FUNC4(dev);

	/*
	 * All of our ah references aren't free until after
	 * ipoib_mcast_dev_flush(), ipoib_flush_paths, and
	 * the neighbor garbage collection is stopped and reaped.
	 * That should all be done now, so make a final ah flush.
	 */
	FUNC7(dev);

	FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);

	priv->rn_ops->ndo_uninit(dev);

	if (priv->pd) {
		FUNC1(priv->pd);
		priv->pd = NULL;
	}
}