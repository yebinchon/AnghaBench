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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct xen_drm_front_info {TYPE_1__* xb_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  otherend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XenbusStateClosing ; 
 unsigned int XenbusStateInitWait ; 
 int /*<<< orphan*/  XenbusStateUnknown ; 
 struct xen_drm_front_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_drm_front_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct xenbus_device *dev)
{
	struct xen_drm_front_info *front_info = FUNC1(&dev->dev);
	int to = 100;

	FUNC7(dev, XenbusStateClosing);

	/*
	 * On driver removal it is disconnected from XenBus,
	 * so no backend state change events come via .otherend_changed
	 * callback. This prevents us from exiting gracefully, e.g.
	 * signaling the backend to free event channels, waiting for its
	 * state to change to XenbusStateClosed and cleaning at our end.
	 * Normally when front driver removed backend will finally go into
	 * XenbusStateInitWait state.
	 *
	 * Workaround: read backend's state manually and wait with time-out.
	 */
	while ((FUNC5(front_info->xb_dev->otherend, "state",
				     XenbusStateUnknown) != XenbusStateInitWait) &&
				     --to)
		FUNC2(10);

	if (!to) {
		unsigned int state;

		state = FUNC5(front_info->xb_dev->otherend,
					     "state", XenbusStateUnknown);
		FUNC0("Backend state is %s while removing driver\n",
			  FUNC6(state));
	}

	FUNC3(front_info);
	FUNC4(dev);
	return 0;
}