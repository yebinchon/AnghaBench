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
struct ti_lmu_bank {int /*<<< orphan*/  ramp_down_usec; int /*<<< orphan*/  ramp_up_usec; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 

int FUNC2(struct device *dev,
				  struct fwnode_handle *child,
				  struct ti_lmu_bank *lmu_data)
{
	int ret;

	ret = FUNC1(child, "ramp-up-us",
				 &lmu_data->ramp_up_usec);
	if (ret)
		FUNC0(dev, "ramp-up-us property missing\n");


	ret = FUNC1(child, "ramp-down-us",
				 &lmu_data->ramp_down_usec);
	if (ret)
		FUNC0(dev, "ramp-down-us property missing\n");

	return 0;
}