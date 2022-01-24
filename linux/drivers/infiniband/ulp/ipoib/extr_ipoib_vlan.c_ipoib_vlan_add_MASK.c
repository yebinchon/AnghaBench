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
struct net_device {scalar_t__ reg_state; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  port; int /*<<< orphan*/  ca; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  intf_name ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EPERM ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  IPOIB_LEGACY_CHILD ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ NETREG_REGISTERED ; 
 scalar_t__ NETREG_UNINITIALIZED ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct ipoib_dev_priv*,struct ipoib_dev_priv*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct ipoib_dev_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,unsigned short) ; 

int FUNC11(struct net_device *pdev, unsigned short pkey)
{
	struct ipoib_dev_priv *ppriv, *priv;
	char intf_name[IFNAMSIZ];
	struct net_device *ndev;
	int result;

	if (!FUNC3(CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC8())
		return FUNC7();

	if (pdev->reg_state != NETREG_REGISTERED) {
		FUNC9();
		return -EPERM;
	}

	ppriv = FUNC6(pdev);

	FUNC10(intf_name, sizeof(intf_name), "%s.%04x",
		 ppriv->dev->name, pkey);

	ndev = FUNC5(ppriv->ca, ppriv->port, intf_name);
	if (FUNC0(ndev)) {
		result = FUNC1(ndev);
		goto out;
	}
	priv = FUNC6(ndev);

	result = FUNC2(ppriv, priv, pkey, IPOIB_LEGACY_CHILD);

	if (result && ndev->reg_state == NETREG_UNINITIALIZED)
		FUNC4(ndev);

out:
	FUNC9();

	return result;
}