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
struct of_overlay_notify_data {int /*<<< orphan*/  overlay; } ;
struct device {int dummy; } ;
struct fpga_region {struct fpga_image_info* info; struct device dev; } ;
struct fpga_image_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct fpga_image_info*) ; 
 int FUNC1 (struct fpga_image_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fpga_image_info*) ; 
 int FUNC4 (struct fpga_region*) ; 
 struct fpga_image_info* FUNC5 (struct fpga_region*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fpga_region *region,
					   struct of_overlay_notify_data *nd)
{
	struct device *dev = &region->dev;
	struct fpga_image_info *info;
	int ret;

	info = FUNC5(region, nd->overlay);
	if (FUNC0(info))
		return FUNC1(info);

	/* If overlay doesn't program the FPGA, accept it anyway. */
	if (!info)
		return 0;

	if (region->info) {
		FUNC2(dev, "Region already has overlay applied.\n");
		return -EINVAL;
	}

	region->info = info;
	ret = FUNC4(region);
	if (ret) {
		/* error; reject overlay */
		FUNC3(info);
		region->info = NULL;
	}

	return ret;
}