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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {struct net_device* parent; int /*<<< orphan*/ * wq; int /*<<< orphan*/  vlan_rwsem; int /*<<< orphan*/  list; int /*<<< orphan*/  child_intfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC8(dev);

	FUNC0();

	/*
	 * ipoib_remove_one guarantees the children are removed before the
	 * parent, and that is the only place where a parent can be removed.
	 */
	FUNC1(!FUNC10(&priv->child_intfs));

	if (priv->parent) {
		struct ipoib_dev_priv *ppriv = FUNC8(priv->parent);

		FUNC4(&ppriv->vlan_rwsem);
		FUNC9(&priv->list);
		FUNC11(&ppriv->vlan_rwsem);
	}

	FUNC7(dev);

	FUNC6(dev);

	/* no more works over the priv->wq */
	if (priv->wq) {
		FUNC5(priv->wq);
		FUNC2(priv->wq);
		priv->wq = NULL;
	}

	if (priv->parent)
		FUNC3(priv->parent);
}