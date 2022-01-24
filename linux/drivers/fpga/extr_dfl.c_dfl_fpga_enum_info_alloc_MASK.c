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
struct dfl_fpga_enum_info {int /*<<< orphan*/  dfls; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dfl_fpga_enum_info* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

struct dfl_fpga_enum_info *FUNC4(struct device *dev)
{
	struct dfl_fpga_enum_info *info;

	FUNC2(dev);

	info = FUNC1(dev, sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC3(dev);
		return NULL;
	}

	info->dev = dev;
	FUNC0(&info->dfls);

	return info;
}