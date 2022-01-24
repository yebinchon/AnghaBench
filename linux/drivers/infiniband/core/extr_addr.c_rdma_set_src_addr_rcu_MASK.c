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
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct net_device {unsigned int flags; } ;
struct dst_entry {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rdma_dev_addr*,struct sockaddr const*,struct dst_entry const*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ,struct sockaddr const*) ; 

__attribute__((used)) static int FUNC5(struct rdma_dev_addr *dev_addr,
				 unsigned int *ndev_flags,
				 const struct sockaddr *dst_in,
				 const struct dst_entry *dst)
{
	struct net_device *ndev = FUNC1(dst->dev);

	*ndev_flags = ndev->flags;
	/* A physical device must be the RDMA device to use */
	if (ndev->flags & IFF_LOOPBACK) {
		/*
		 * RDMA (IB/RoCE, iWarp) doesn't run on lo interface or
		 * loopback IP address. So if route is resolved to loopback
		 * interface, translate that to a real ndev based on non
		 * loopback IP address.
		 */
		ndev = FUNC4(FUNC3(ndev), dst_in);
		if (FUNC0(ndev))
			return -ENODEV;
	}

	return FUNC2(dev_addr, dst_in, dst, ndev);
}