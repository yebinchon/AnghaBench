#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct i40iw_device {scalar_t__ init_state; int iw_status; TYPE_1__* ldev; scalar_t__ closing; } ;
struct i40iw_handler {struct i40iw_device device; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 scalar_t__ RDMA_DEV_REGISTERED ; 
 struct i40iw_handler* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*) ; 
 struct net_device* FUNC2 (void*) ; 

int FUNC3(struct notifier_block *notifier,
			  unsigned long event,
			  void *ptr)
{
	struct net_device *event_netdev;
	struct net_device *netdev;
	struct i40iw_device *iwdev;
	struct i40iw_handler *hdl;

	event_netdev = FUNC2(ptr);

	hdl = FUNC0(event_netdev);
	if (!hdl)
		return NOTIFY_DONE;

	iwdev = &hdl->device;
	if (iwdev->init_state < RDMA_DEV_REGISTERED || iwdev->closing)
		return NOTIFY_DONE;

	netdev = iwdev->ldev->netdev;
	if (netdev != event_netdev)
		return NOTIFY_DONE;

	iwdev->iw_status = 1;

	switch (event) {
	case NETDEV_DOWN:
		iwdev->iw_status = 0;
		/* Fall through */
	case NETDEV_UP:
		FUNC1(iwdev);
		break;
	default:
		break;
	}
	return NOTIFY_DONE;
}