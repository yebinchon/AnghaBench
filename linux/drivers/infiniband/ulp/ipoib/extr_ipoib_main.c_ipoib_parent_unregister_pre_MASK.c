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
struct ipoib_dev_priv {int /*<<< orphan*/  event_handler; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct ipoib_dev_priv *priv = FUNC3(ndev);

	/*
	 * ipoib_set_mac checks netif_running before pushing work, clearing
	 * running ensures the it will not add more work.
	 */
	FUNC4();
	FUNC0(priv->dev, priv->dev->flags & ~IFF_UP, NULL);
	FUNC5();

	/* ipoib_event() cannot be running once this returns */
	FUNC2(&priv->event_handler);

	/*
	 * Work on the queue grabs the rtnl lock, so this cannot be done while
	 * also holding it.
	 */
	FUNC1(ipoib_workqueue);
}