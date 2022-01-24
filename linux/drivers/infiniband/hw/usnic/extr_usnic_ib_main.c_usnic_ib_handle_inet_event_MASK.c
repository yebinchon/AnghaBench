#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct usnic_ib_dev {int /*<<< orphan*/  usdev_lock; TYPE_2__ ib_dev; TYPE_3__* ufdev; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_address; } ;
struct TYPE_5__ {int port_num; } ;
struct ib_event {TYPE_1__ element; TYPE_2__* device; void* event; } ;
struct TYPE_7__ {int /*<<< orphan*/  inaddr; } ;

/* Variables and functions */
 void* IB_EVENT_GID_CHANGE ; 
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usnic_ib_dev*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC9(struct usnic_ib_dev *us_ibdev,
					unsigned long event, void *ptr)
{
	struct in_ifaddr *ifa = ptr;
	struct ib_event ib_event;

	FUNC2(&us_ibdev->usdev_lock);

	switch (event) {
	case NETDEV_DOWN:
		FUNC8("%s via ip notifiers",
				FUNC4(event));
		FUNC6(us_ibdev->ufdev);
		FUNC7(us_ibdev);
		ib_event.event = IB_EVENT_GID_CHANGE;
		ib_event.device = &us_ibdev->ib_dev;
		ib_event.element.port_num = 1;
		FUNC1(&ib_event);
		break;
	case NETDEV_UP:
		FUNC5(us_ibdev->ufdev, ifa->ifa_address);
		FUNC8("%s via ip notifiers: ip %pI4",
				FUNC4(event),
				&us_ibdev->ufdev->inaddr);
		ib_event.event = IB_EVENT_GID_CHANGE;
		ib_event.device = &us_ibdev->ib_dev;
		ib_event.element.port_num = 1;
		FUNC1(&ib_event);
		break;
	default:
		FUNC8("Ignoring event %s on %s",
				FUNC4(event),
				FUNC0(&us_ibdev->ib_dev.dev));
	}
	FUNC3(&us_ibdev->usdev_lock);

	return NOTIFY_DONE;
}