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
struct ipoib_dev_priv {int /*<<< orphan*/  flags; TYPE_1__* rn_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);

	priv->rn_ops->ndo_stop(dev);

	FUNC0(IPOIB_FLAG_INITIALIZED, &priv->flags);
	FUNC1(dev);

	return 0;
}