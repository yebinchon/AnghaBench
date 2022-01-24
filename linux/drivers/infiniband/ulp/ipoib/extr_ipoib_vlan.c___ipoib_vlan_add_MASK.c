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
typedef  int u16 ;
struct net_device {scalar_t__ reg_state; int /*<<< orphan*/  (* priv_destructor ) (struct net_device*) ;int /*<<< orphan*/  dev; } ;
struct ipoib_dev_priv {int pkey; int child_type; struct net_device* dev; struct net_device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTUNIQ ; 
 int IPOIB_LEGACY_CHILD ; 
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dev_attr_parent ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ipoib_dev_priv*,struct ipoib_dev_priv*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

int FUNC12(struct ipoib_dev_priv *ppriv, struct ipoib_dev_priv *priv,
		     u16 pkey, int type)
{
	struct net_device *ndev = priv->dev;
	int result;

	FUNC0();

	/*
	 * We do not need to touch priv if register_netdevice fails, so just
	 * always use this flow.
	 */
	ndev->priv_destructor = ipoib_intf_free;

	/*
	 * Racing with unregister of the parent must be prevented by the
	 * caller.
	 */
	FUNC1(ppriv->dev->reg_state != NETREG_REGISTERED);

	if (pkey == 0 || pkey == 0x8000) {
		result = -EINVAL;
		goto out_early;
	}

	priv->parent = ppriv->dev;
	priv->pkey = pkey;
	priv->child_type = type;

	if (!FUNC8(ppriv, priv)) {
		result = -ENOTUNIQ;
		goto out_early;
	}

	result = FUNC9(ndev);
	if (result) {
		FUNC7(priv, "failed to initialize; error %i", result);

		/*
		 * register_netdevice sometimes calls priv_destructor,
		 * sometimes not. Make sure it was done.
		 */
		goto out_early;
	}

	/* RTNL childs don't need proprietary sysfs entries */
	if (type == IPOIB_LEGACY_CHILD) {
		if (FUNC5(ndev))
			goto sysfs_failed;
		if (FUNC3(ndev))
			goto sysfs_failed;
		if (FUNC4(ndev))
			goto sysfs_failed;

		if (FUNC2(&ndev->dev, &dev_attr_parent))
			goto sysfs_failed;
	}

	return 0;

sysfs_failed:
	FUNC11(priv->dev);
	return -ENOMEM;

out_early:
	if (ndev->priv_destructor)
		ndev->priv_destructor(ndev);
	return result;
}