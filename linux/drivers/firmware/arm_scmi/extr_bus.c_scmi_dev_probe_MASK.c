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
struct scmi_driver {int (* probe ) (struct scmi_device*) ;} ;
struct scmi_device_id {int dummy; } ;
struct scmi_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  protocol_id; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 struct scmi_device_id* FUNC0 (struct scmi_device*,struct scmi_driver*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_device*) ; 
 struct scmi_device* FUNC3 (struct device*) ; 
 struct scmi_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct scmi_driver *scmi_drv = FUNC4(dev->driver);
	struct scmi_device *scmi_dev = FUNC3(dev);
	const struct scmi_device_id *id;
	int ret;

	id = FUNC0(scmi_dev, scmi_drv);
	if (!id)
		return -ENODEV;

	if (!scmi_dev->handle)
		return -EPROBE_DEFER;

	ret = FUNC1(scmi_dev->protocol_id, scmi_dev->handle);
	if (ret)
		return ret;

	return scmi_drv->probe(scmi_dev);
}