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
struct xenbus_device_id {int dummy; } ;
struct device {int dummy; } ;
struct xenbus_device {struct device dev; } ;
struct xen_drm_front_info {int /*<<< orphan*/  dbuf_list; int /*<<< orphan*/  io_lock; struct xenbus_device* xb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XenbusStateInitialising ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct xen_drm_front_info*) ; 
 struct xen_drm_front_info* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct xenbus_device *xb_dev,
			 const struct xenbus_device_id *id)
{
	struct xen_drm_front_info *front_info;
	struct device *dev = &xb_dev->dev;
	int ret;

	ret = FUNC5(dev, FUNC0(64));
	if (ret < 0) {
		FUNC1("Cannot setup DMA mask, ret %d", ret);
		return ret;
	}

	front_info = FUNC4(&xb_dev->dev,
				  sizeof(*front_info), GFP_KERNEL);
	if (!front_info)
		return -ENOMEM;

	front_info->xb_dev = xb_dev;
	FUNC6(&front_info->io_lock);
	FUNC2(&front_info->dbuf_list);
	FUNC3(&xb_dev->dev, front_info);

	return FUNC7(xb_dev, XenbusStateInitialising);
}