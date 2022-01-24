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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipoib_dev_priv {int pkey; int /*<<< orphan*/  flags; int /*<<< orphan*/  ah_reap_task; TYPE_1__* rn_ops; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {scalar_t__ (* ndo_open ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  IPOIB_PKEY_ASSIGNED ; 
 int /*<<< orphan*/  IPOIB_STOP_REAPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);

	FUNC3(dev);

	if (!FUNC11(IPOIB_PKEY_ASSIGNED, &priv->flags)) {
		FUNC5(priv, "P_Key 0x%04x is %s\n", priv->pkey,
			   (!(priv->pkey & 0x7fff) ? "Invalid" : "not found"));
		return -1;
	}

	FUNC1(IPOIB_STOP_REAPER, &priv->flags);
	FUNC7(priv->wq, &priv->ah_reap_task,
			   FUNC8(HZ));

	if (priv->rn_ops->ndo_open(dev)) {
		FUNC6("%s: Failed to open dev\n", dev->name);
		goto dev_stop;
	}

	FUNC9(IPOIB_FLAG_INITIALIZED, &priv->flags);

	return 0;

dev_stop:
	FUNC9(IPOIB_STOP_REAPER, &priv->flags);
	FUNC0(&priv->ah_reap_task);
	FUNC9(IPOIB_FLAG_INITIALIZED, &priv->flags);
	FUNC2(dev);
	return -1;
}