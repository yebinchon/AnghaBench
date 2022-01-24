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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_netdev {int dummy; } ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  RDMA_NETDEV_IPOIB ; 
 struct net_device* FUNC3 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipoib_setup_common ; 
 struct net_device* FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *FUNC5(struct ib_device *hca, u8 port,
					     const char *name)
{
	struct net_device *dev;

	dev = FUNC4(hca, port, RDMA_NETDEV_IPOIB, name,
				NET_NAME_UNKNOWN, ipoib_setup_common);
	if (!FUNC1(dev) || FUNC2(dev) != -EOPNOTSUPP)
		return dev;

	dev = FUNC3(sizeof(struct rdma_netdev), name, NET_NAME_UNKNOWN,
			   ipoib_setup_common);
	if (!dev)
		return FUNC0(-ENOMEM);
	return dev;
}