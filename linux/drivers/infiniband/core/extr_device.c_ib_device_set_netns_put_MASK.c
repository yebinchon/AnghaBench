#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct TYPE_4__ {scalar_t__ init_port; int /*<<< orphan*/  disassociate_ucontext; } ;
struct ib_device {int /*<<< orphan*/  dev; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {int /*<<< orphan*/  net_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct net*) ; 
 int FUNC1 (struct net*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 scalar_t__ ib_devices_shared_netns ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int FUNC8 (struct ib_device*,int /*<<< orphan*/ ,struct net*) ; 

int FUNC9(struct sk_buff *skb,
			    struct ib_device *dev, u32 ns_fd)
{
	struct net *net;
	int ret;

	net = FUNC3(ns_fd);
	if (FUNC0(net)) {
		ret = FUNC1(net);
		goto net_err;
	}

	if (!FUNC5(skb, net->user_ns, CAP_NET_ADMIN)) {
		ret = -EPERM;
		goto ns_err;
	}

	/*
	 * Currently supported only for those providers which support
	 * disassociation and don't do port specific sysfs init. Once a
	 * port_cleanup infrastructure is implemented, this limitation will be
	 * removed.
	 */
	if (!dev->ops.disassociate_ucontext || dev->ops.init_port ||
	    ib_devices_shared_netns) {
		ret = -EOPNOTSUPP;
		goto ns_err;
	}

	FUNC2(&dev->dev);
	FUNC4(dev);
	ret = FUNC8(dev, current->nsproxy->net_ns, net);
	FUNC6(&dev->dev);

	FUNC7(net);
	return ret;

ns_err:
	FUNC7(net);
net_err:
	FUNC4(dev);
	return ret;
}