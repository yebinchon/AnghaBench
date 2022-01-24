#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_address; TYPE_1__* ifa_dev; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;
struct i40iw_device {scalar_t__ init_state; TYPE_2__* ldev; scalar_t__ closing; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct TYPE_4__ {struct net_device* netdev; } ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ I40IW_ARP_ADD ; 
 scalar_t__ I40IW_ARP_DELETE ; 
 scalar_t__ IP_ADDR_REGISTERED ; 
#define  NETDEV_CHANGEADDR 130 
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 struct i40iw_handler* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*,struct net_device*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_device*,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__) ; 
 struct net_device* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct notifier_block *notifier,
			 unsigned long event,
			 void *ptr)
{
	struct in_ifaddr *ifa = ptr;
	struct net_device *event_netdev = ifa->ifa_dev->dev;
	struct net_device *netdev;
	struct net_device *upper_dev;
	struct i40iw_device *iwdev;
	struct i40iw_handler *hdl;
	u32 local_ipaddr;
	u32 action = I40IW_ARP_ADD;

	hdl = FUNC1(event_netdev);
	if (!hdl)
		return NOTIFY_DONE;

	iwdev = &hdl->device;
	if (iwdev->init_state < IP_ADDR_REGISTERED || iwdev->closing)
		return NOTIFY_DONE;

	netdev = iwdev->ldev->netdev;
	upper_dev = FUNC4(netdev);
	if (netdev != event_netdev)
		return NOTIFY_DONE;

	if (upper_dev) {
		struct in_device *in;

		FUNC7();
		in = FUNC0(upper_dev);

		local_ipaddr = 0;
		if (in) {
			struct in_ifaddr *ifa;

			ifa = FUNC6(in->ifa_list);
			if (ifa)
				local_ipaddr = FUNC5(ifa->ifa_address);
		}

		FUNC8();
	} else {
		local_ipaddr = FUNC5(ifa->ifa_address);
	}
	switch (event) {
	case NETDEV_DOWN:
		action = I40IW_ARP_DELETE;
		/* Fall through */
	case NETDEV_UP:
		/* Fall through */
	case NETDEV_CHANGEADDR:

		/* Just skip if no need to handle ARP cache */
		if (!local_ipaddr)
			break;

		FUNC3(iwdev,
				       netdev->dev_addr,
				       &local_ipaddr,
				       true,
				       action);
		FUNC2(iwdev, netdev, &local_ipaddr, true,
				(action == I40IW_ARP_ADD) ? true : false);
		break;
	default:
		break;
	}
	return NOTIFY_DONE;
}