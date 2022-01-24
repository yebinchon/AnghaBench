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
struct scmi_driver {int /*<<< orphan*/  (* remove ) (struct scmi_device*) ;} ;
struct scmi_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scmi_device*) ; 
 struct scmi_device* FUNC1 (struct device*) ; 
 struct scmi_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct scmi_driver *scmi_drv = FUNC2(dev->driver);
	struct scmi_device *scmi_dev = FUNC1(dev);

	if (scmi_drv->remove)
		scmi_drv->remove(scmi_dev);

	return 0;
}