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
struct scmi_driver {int dummy; } ;
struct scmi_device_id {int dummy; } ;
struct scmi_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scmi_device_id* FUNC0 (struct scmi_device*,struct scmi_driver*) ; 
 struct scmi_device* FUNC1 (struct device*) ; 
 struct scmi_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct scmi_driver *scmi_drv = FUNC2(drv);
	struct scmi_device *scmi_dev = FUNC1(dev);
	const struct scmi_device_id *id;

	id = FUNC0(scmi_dev, scmi_drv);
	if (id)
		return 1;

	return 0;
}