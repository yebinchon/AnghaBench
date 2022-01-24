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
struct fpga_manager {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct fpga_manager* FUNC0 (int /*<<< orphan*/ ) ; 
 struct fpga_manager* FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  fpga_mgr_class ; 

struct fpga_manager *FUNC3(struct device_node *node)
{
	struct device *dev;

	dev = FUNC2(fpga_mgr_class, node);
	if (!dev)
		return FUNC0(-ENODEV);

	return FUNC1(dev);
}