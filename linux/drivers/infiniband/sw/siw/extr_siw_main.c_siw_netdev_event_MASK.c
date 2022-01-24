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
struct siw_device {int /*<<< orphan*/  base_dev; int /*<<< orphan*/  state; } ;
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_LID_CHANGE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  IB_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
#define  NETDEV_CHANGE 135 
#define  NETDEV_CHANGEADDR 134 
#define  NETDEV_CHANGEMTU 133 
#define  NETDEV_DOWN 132 
#define  NETDEV_GOING_DOWN 131 
#define  NETDEV_REGISTER 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  RDMA_DRIVER_SIW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 struct ib_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct siw_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct siw_device*,int,int /*<<< orphan*/ ) ; 
 struct siw_device* FUNC9 (struct ib_device*) ; 

__attribute__((used)) static int FUNC10(struct notifier_block *nb, unsigned long event,
			    void *arg)
{
	struct net_device *netdev = FUNC5(arg);
	struct ib_device *base_dev;
	struct siw_device *sdev;

	FUNC0(&netdev->dev, "siw: event %lu\n", event);

	if (FUNC1(netdev) != &init_net)
		return NOTIFY_OK;

	base_dev = FUNC2(netdev, RDMA_DRIVER_SIW);
	if (!base_dev)
		return NOTIFY_OK;

	sdev = FUNC9(base_dev);

	switch (event) {
	case NETDEV_UP:
		sdev->state = IB_PORT_ACTIVE;
		FUNC8(sdev, 1, IB_EVENT_PORT_ACTIVE);
		break;

	case NETDEV_GOING_DOWN:
		FUNC7(sdev);
		break;

	case NETDEV_DOWN:
		sdev->state = IB_PORT_DOWN;
		FUNC8(sdev, 1, IB_EVENT_PORT_ERR);
		break;

	case NETDEV_REGISTER:
		/*
		 * Device registration now handled only by
		 * rdma netlink commands. So it shall be impossible
		 * to end up here with a valid siw device.
		 */
		FUNC6(base_dev, "unexpected NETDEV_REGISTER event\n");
		break;

	case NETDEV_UNREGISTER:
		FUNC4(&sdev->base_dev);
		break;

	case NETDEV_CHANGEADDR:
		FUNC8(sdev, 1, IB_EVENT_LID_CHANGE);
		break;
	/*
	 * Todo: Below netdev events are currently not handled.
	 */
	case NETDEV_CHANGEMTU:
	case NETDEV_CHANGE:
		break;

	default:
		break;
	}
	FUNC3(&sdev->base_dev);

	return NOTIFY_OK;
}