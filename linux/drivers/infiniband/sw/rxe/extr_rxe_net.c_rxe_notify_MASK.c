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
struct rxe_dev {int /*<<< orphan*/  ib_dev; } ;
struct notifier_block {int dummy; } ;
struct net_device {unsigned long name; unsigned long mtu; } ;

/* Variables and functions */
#define  NETDEV_CHANGE 137 
#define  NETDEV_CHANGEADDR 136 
#define  NETDEV_CHANGEMTU 135 
#define  NETDEV_CHANGENAME 134 
#define  NETDEV_DOWN 133 
#define  NETDEV_FEAT_CHANGE 132 
#define  NETDEV_GOING_DOWN 131 
#define  NETDEV_REBOOT 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 
 struct rxe_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxe_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxe_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rxe_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct rxe_dev*) ; 

__attribute__((used)) static int FUNC9(struct notifier_block *not_blk,
		      unsigned long event,
		      void *arg)
{
	struct net_device *ndev = FUNC2(arg);
	struct rxe_dev *rxe = FUNC4(ndev);

	if (!rxe)
		return NOTIFY_OK;

	switch (event) {
	case NETDEV_UNREGISTER:
		FUNC1(&rxe->ib_dev);
		break;
	case NETDEV_UP:
		FUNC6(rxe);
		break;
	case NETDEV_DOWN:
		FUNC5(rxe);
		break;
	case NETDEV_CHANGEMTU:
		FUNC3("%s changed mtu to %d\n", ndev->name, ndev->mtu);
		FUNC7(rxe, ndev->mtu);
		break;
	case NETDEV_CHANGE:
		FUNC8(rxe);
		break;
	case NETDEV_REBOOT:
	case NETDEV_GOING_DOWN:
	case NETDEV_CHANGEADDR:
	case NETDEV_CHANGENAME:
	case NETDEV_FEAT_CHANGE:
	default:
		FUNC3("ignoring netdev event = %ld for %s\n",
			event, ndev->name);
		break;
	}

	FUNC0(&rxe->ib_dev);
	return NOTIFY_OK;
}