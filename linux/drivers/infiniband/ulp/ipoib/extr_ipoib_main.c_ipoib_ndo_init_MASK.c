#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int neigh_priv_len; int* broadcast; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  mtu; } ;
struct ipoib_neigh {int dummy; } ;
struct ipoib_dev_priv {int pkey; int /*<<< orphan*/  vlan_rwsem; int /*<<< orphan*/  child_intfs; int /*<<< orphan*/  list; struct net_device* parent; int /*<<< orphan*/  port; TYPE_2__* dev; TYPE_1__* ca; int /*<<< orphan*/  flags; int /*<<< orphan*/  admin_mtu; int /*<<< orphan*/  mcast_mtu; int /*<<< orphan*/  max_ib_mtu; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_CM_MTU ; 
 int /*<<< orphan*/  IPOIB_FLAG_DEV_ADDR_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev)
{
	struct ipoib_dev_priv *priv = FUNC6(ndev);
	int rc;

	if (priv->parent) {
		FUNC3(ndev);
	} else {
		rc = FUNC5(ndev);
		if (rc)
			return rc;
	}

	/* MTU will be reset when mcast join happens */
	ndev->mtu = FUNC0(priv->max_ib_mtu);
	priv->mcast_mtu = priv->admin_mtu = ndev->mtu;
	ndev->max_mtu = IPOIB_CM_MTU;

	ndev->neigh_priv_len = sizeof(struct ipoib_neigh);

	/*
	 * Set the full membership bit, so that we join the right
	 * broadcast group, etc.
	 */
	priv->pkey |= 0x8000;

	ndev->broadcast[8] = priv->pkey >> 8;
	ndev->broadcast[9] = priv->pkey & 0xff;
	FUNC10(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags);

	FUNC7(priv);

	rc = FUNC4(ndev);
	if (rc) {
		FUNC9("%s: failed to initialize device: %s port %d (ret = %d)\n",
			priv->ca->name, priv->dev->name, priv->port, rc);
		return rc;
	}

	if (priv->parent) {
		struct ipoib_dev_priv *ppriv = FUNC6(priv->parent);

		FUNC1(priv->parent);

		FUNC2(&ppriv->vlan_rwsem);
		FUNC8(&priv->list, &ppriv->child_intfs);
		FUNC11(&ppriv->vlan_rwsem);
	}

	return 0;
}