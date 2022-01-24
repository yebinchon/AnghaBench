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
struct hv_driver {int /*<<< orphan*/  (* shutdown ) (struct hv_device*) ;} ;
struct hv_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct hv_device* FUNC0 (struct device*) ; 
 struct hv_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_device*) ; 

__attribute__((used)) static void FUNC3(struct device *child_device)
{
	struct hv_driver *drv;
	struct hv_device *dev = FUNC0(child_device);


	/* The device may not be attached yet */
	if (!child_device->driver)
		return;

	drv = FUNC1(child_device->driver);

	if (drv->shutdown)
		drv->shutdown(dev);
}