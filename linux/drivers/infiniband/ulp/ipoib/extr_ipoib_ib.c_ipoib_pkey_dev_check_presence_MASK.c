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
struct rdma_netdev {int /*<<< orphan*/  (* set_id ) (struct net_device*,int /*<<< orphan*/ ) ;} ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {int pkey; int /*<<< orphan*/  flags; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 struct rdma_netdev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC6(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	struct rdma_netdev *rn = FUNC3(dev);

	if (!(priv->pkey & 0x7fff) ||
	    FUNC1(priv->ca, priv->port, priv->pkey,
			 &priv->pkey_index)) {
		FUNC0(IPOIB_PKEY_ASSIGNED, &priv->flags);
	} else {
		if (rn->set_id)
			rn->set_id(dev, priv->pkey_index);
		FUNC4(IPOIB_PKEY_ASSIGNED, &priv->flags);
	}
}