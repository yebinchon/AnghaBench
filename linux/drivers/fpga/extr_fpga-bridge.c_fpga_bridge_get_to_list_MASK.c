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
struct list_head {int dummy; } ;
struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int /*<<< orphan*/  node; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fpga_bridge*) ; 
 int FUNC1 (struct fpga_bridge*) ; 
 int /*<<< orphan*/  bridge_list_lock ; 
 struct fpga_bridge* FUNC2 (struct device*,struct fpga_image_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct device *dev,
			    struct fpga_image_info *info,
			    struct list_head *bridge_list)
{
	struct fpga_bridge *bridge;
	unsigned long flags;

	bridge = FUNC2(dev, info);
	if (FUNC0(bridge))
		return FUNC1(bridge);

	FUNC4(&bridge_list_lock, flags);
	FUNC3(&bridge->node, bridge_list);
	FUNC5(&bridge_list_lock, flags);

	return 0;
}