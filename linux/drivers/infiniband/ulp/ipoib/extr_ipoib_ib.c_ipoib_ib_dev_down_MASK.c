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
 int /*<<< orphan*/  IPOIB_FLAG_OPER_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

void FUNC7(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC5(dev);

	FUNC1(priv, "downing ib_dev\n");

	FUNC0(IPOIB_FLAG_OPER_UP, &priv->flags);
	FUNC6(dev);

	FUNC4(dev);
	FUNC3(dev);

	FUNC2(dev);
}