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
struct ishtp_cl_driver {int (* probe ) (struct ishtp_cl_device*) ;} ;
struct ishtp_cl_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct ishtp_cl_device*) ; 
 struct ishtp_cl_device* FUNC1 (struct device*) ; 
 struct ishtp_cl_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct ishtp_cl_device *device = FUNC1(dev);
	struct ishtp_cl_driver *driver;

	if (!device)
		return 0;

	driver = FUNC2(dev->driver);
	if (!driver || !driver->probe)
		return -ENODEV;

	return driver->probe(device);
}