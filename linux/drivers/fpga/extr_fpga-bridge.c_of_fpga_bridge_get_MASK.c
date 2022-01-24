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
struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct fpga_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 struct fpga_bridge* FUNC1 (struct device*,struct fpga_image_info*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  fpga_bridge_class ; 

struct fpga_bridge *FUNC3(struct device_node *np,
				       struct fpga_image_info *info)
{
	struct device *dev;

	dev = FUNC2(fpga_bridge_class, np);
	if (!dev)
		return FUNC0(-ENODEV);

	return FUNC1(dev, info);
}