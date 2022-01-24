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
struct ipoib_dev_priv {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_INITIALIZED ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipoib_dev_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	int ret;

	ret = FUNC2(dev);
	if (ret) {
		FUNC5(priv, "ipoib_init_qp returned %d\n", ret);
		return -1;
	}

	ret = FUNC1(dev);
	if (ret) {
		FUNC5(priv, "ipoib_ib_post_receives returned %d\n", ret);
		goto out;
	}

	ret = FUNC0(dev);
	if (ret) {
		FUNC5(priv, "ipoib_cm_dev_open returned %d\n", ret);
		goto out;
	}

	if (!FUNC6(IPOIB_FLAG_INITIALIZED, &priv->flags))
		FUNC3(dev);

	return 0;
out:
	return -1;
}