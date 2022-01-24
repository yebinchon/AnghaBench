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
typedef  union ib_gid {int dummy; } ib_gid ;
struct sockaddr_storage {scalar_t__ __data; } ;
struct net_device {int priv_flags; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  flush_light; } ;

/* Variables and functions */
 int EBUSY ; 
 int IFF_LIVE_ADDR_CHANGE ; 
 int FUNC0 (struct net_device*,struct sockaddr_storage*) ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  ipoib_workqueue ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ipoib_dev_priv*,union ib_gid*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *addr)
{
	struct ipoib_dev_priv *priv = FUNC1(dev);
	struct sockaddr_storage *ss = addr;
	int ret;

	if (!(dev->priv_flags & IFF_LIVE_ADDR_CHANGE) && FUNC2(dev))
		return -EBUSY;

	ret = FUNC0(dev, ss);
	if (ret)
		return ret;

	FUNC4(priv, (union ib_gid *)(ss->__data + 4));

	FUNC3(ipoib_workqueue, &priv->flush_light);

	return 0;
}