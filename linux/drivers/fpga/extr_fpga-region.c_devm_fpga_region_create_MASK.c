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
struct fpga_region {int dummy; } ;
struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_fpga_region_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct fpga_region**) ; 
 struct fpga_region** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpga_region**) ; 
 struct fpga_region* FUNC3 (struct device*,struct fpga_manager*,int (*) (struct fpga_region*)) ; 

struct fpga_region
*FUNC4(struct device *dev,
			 struct fpga_manager *mgr,
			 int (*get_bridges)(struct fpga_region *))
{
	struct fpga_region **ptr, *region;

	ptr = FUNC1(devm_fpga_region_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	region = FUNC3(dev, mgr, get_bridges);
	if (!region) {
		FUNC2(ptr);
	} else {
		*ptr = region;
		FUNC0(dev, ptr);
	}

	return region;
}