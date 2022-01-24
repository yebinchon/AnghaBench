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
struct platform_device {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,struct fwnode_handle*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 struct platform_device* FUNC1 (struct device*) ; 

__attribute__((used)) static struct
platform_device *FUNC2(struct fwnode_handle *fwnode)
{
	struct device *dev;

	/* get the 'device' corresponding to the matching 'fwnode' */
	dev = FUNC0(&platform_bus_type, fwnode);
	/* get the platform device */
	return dev ? FUNC1(dev) : NULL;
}