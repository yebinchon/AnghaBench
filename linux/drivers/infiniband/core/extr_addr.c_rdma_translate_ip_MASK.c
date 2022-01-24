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
struct rdma_dev_addr {int /*<<< orphan*/  net; scalar_t__ bound_dev_if; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_dev_addr*,struct net_device*) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ,struct sockaddr const*) ; 

int FUNC8(const struct sockaddr *addr,
		      struct rdma_dev_addr *dev_addr)
{
	struct net_device *dev;

	if (dev_addr->bound_dev_if) {
		dev = FUNC2(dev_addr->net, dev_addr->bound_dev_if);
		if (!dev)
			return -ENODEV;
		FUNC6(dev_addr, dev);
		FUNC3(dev);
		return 0;
	}

	FUNC4();
	dev = FUNC7(dev_addr->net, addr);
	if (!FUNC0(dev))
		FUNC6(dev_addr, dev);
	FUNC5();
	return FUNC1(dev);
}