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
struct resource {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct device*,struct resource*) ; 
 struct fwnode_handle* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct fwnode_handle*) ; 
 scalar_t__ FUNC3 (struct fwnode_handle*) ; 
 int FUNC4 (struct device*,struct resource*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct resource *res)
{
	struct fwnode_handle *fwnode = FUNC1(dev);

	if (FUNC3(fwnode))
		return FUNC4(dev, res);
	else if (FUNC2(fwnode))
		return FUNC0(dev, res);
	return -ENOENT;
}