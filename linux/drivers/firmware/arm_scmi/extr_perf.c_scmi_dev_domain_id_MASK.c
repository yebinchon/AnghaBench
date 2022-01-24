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
struct of_phandle_args {int* args; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,struct of_phandle_args*) ; 

__attribute__((used)) static int FUNC1(struct device *dev)
{
	struct of_phandle_args clkspec;

	if (FUNC0(dev->of_node, "clocks", "#clock-cells",
				       0, &clkspec))
		return -EINVAL;

	return clkspec.args[0];
}