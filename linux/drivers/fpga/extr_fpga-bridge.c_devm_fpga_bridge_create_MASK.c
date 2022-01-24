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
struct fpga_bridge_ops {int dummy; } ;
struct fpga_bridge {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_fpga_bridge_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct fpga_bridge**) ; 
 struct fpga_bridge** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpga_bridge**) ; 
 struct fpga_bridge* FUNC3 (struct device*,char const*,struct fpga_bridge_ops const*,void*) ; 

struct fpga_bridge
*FUNC4(struct device *dev, const char *name,
			 const struct fpga_bridge_ops *br_ops, void *priv)
{
	struct fpga_bridge **ptr, *bridge;

	ptr = FUNC1(devm_fpga_bridge_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	bridge = FUNC3(dev, name, br_ops, priv);
	if (!bridge) {
		FUNC2(ptr);
	} else {
		*ptr = bridge;
		FUNC0(dev, ptr);
	}

	return bridge;
}