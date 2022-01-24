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
struct rdma_dev_addr {int /*<<< orphan*/  bound_dev_if; int /*<<< orphan*/  net; int /*<<< orphan*/  sgid_attr; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rdma_dev_addr *addr)
{
	struct net_device *ndev;

	ndev = FUNC3(addr->sgid_attr);
	if (FUNC0(ndev))
		return FUNC1(ndev);

	/*
	 * Since we are holding the rcu, reading net and ifindex
	 * are safe without any additional reference; because
	 * change_net_namespace() in net/core/dev.c does rcu sync
	 * after it changes the state to IFF_DOWN and before
	 * updating netdev fields {net, ifindex}.
	 */
	addr->net = FUNC2(ndev);
	addr->bound_dev_if = ndev->ifindex;
	return 0;
}