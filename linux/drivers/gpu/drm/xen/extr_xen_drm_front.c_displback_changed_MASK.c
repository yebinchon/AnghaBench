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
struct xenbus_device {int state; int /*<<< orphan*/  dev; } ;
struct xen_drm_front_info {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 struct xen_drm_front_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xen_drm_front_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_drm_front_info*) ; 
 int FUNC4 (struct xen_drm_front_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int const) ; 

__attribute__((used)) static void FUNC8(struct xenbus_device *xb_dev,
			      enum xenbus_state backend_state)
{
	struct xen_drm_front_info *front_info = FUNC1(&xb_dev->dev);
	int ret;

	FUNC0("Backend state is %s, front is %s\n",
		  FUNC6(backend_state),
		  FUNC6(xb_dev->state));

	switch (backend_state) {
	case XenbusStateReconfiguring:
		/* fall through */
	case XenbusStateReconfigured:
		/* fall through */
	case XenbusStateInitialised:
		break;

	case XenbusStateInitialising:
		if (xb_dev->state == XenbusStateReconfiguring)
			break;

		/* recovering after backend unexpected closure */
		FUNC3(front_info);
		break;

	case XenbusStateInitWait:
		if (xb_dev->state == XenbusStateReconfiguring)
			break;

		/* recovering after backend unexpected closure */
		FUNC3(front_info);
		if (xb_dev->state != XenbusStateInitialising)
			break;

		ret = FUNC4(front_info);
		if (ret < 0)
			FUNC5(xb_dev, ret, "initializing frontend");
		else
			FUNC7(xb_dev, XenbusStateInitialised);
		break;

	case XenbusStateConnected:
		if (xb_dev->state != XenbusStateInitialised)
			break;

		ret = FUNC2(front_info);
		if (ret < 0) {
			FUNC3(front_info);
			FUNC5(xb_dev, ret, "connecting backend");
		} else {
			FUNC7(xb_dev, XenbusStateConnected);
		}
		break;

	case XenbusStateClosing:
		/*
		 * in this state backend starts freeing resources,
		 * so let it go into closed state, so we can also
		 * remove ours
		 */
		break;

	case XenbusStateUnknown:
		/* fall through */
	case XenbusStateClosed:
		if (xb_dev->state == XenbusStateClosed)
			break;

		FUNC3(front_info);
		break;
	}
}