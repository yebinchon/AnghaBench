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
struct TYPE_2__ {int /*<<< orphan*/ * srq_ring; int /*<<< orphan*/ * srq; } ;
struct ipoib_dev_priv {TYPE_1__ cm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*) ; 
 struct ipoib_dev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,char*,int) ; 

void FUNC5(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC3(dev);
	int ret;

	if (!priv->cm.srq)
		return;

	FUNC2(priv, "Cleanup ipoib connected mode.\n");

	ret = FUNC0(priv->cm.srq);
	if (ret)
		FUNC4(priv, "ib_destroy_srq failed: %d\n", ret);

	priv->cm.srq = NULL;
	if (!priv->cm.srq_ring)
		return;

	FUNC1(dev, priv->cm.srq_ring);
	priv->cm.srq_ring = NULL;
}