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
struct ishtp_cl_driver {int (* remove ) (struct ishtp_cl_device*) ;} ;
struct ishtp_cl_device {int /*<<< orphan*/  event_work; int /*<<< orphan*/ * event_cb; } ;
struct device {int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ishtp_cl_device*) ; 
 struct ishtp_cl_device* FUNC2 (struct device*) ; 
 struct ishtp_cl_driver* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ishtp_cl_device *device = FUNC2(dev);
	struct ishtp_cl_driver *driver;

	if (!device || !dev->driver)
		return 0;

	if (device->event_cb) {
		device->event_cb = NULL;
		FUNC0(&device->event_work);
	}

	driver = FUNC3(dev->driver);
	if (!driver->remove) {
		dev->driver = NULL;

		return 0;
	}

	return driver->remove(device);
}