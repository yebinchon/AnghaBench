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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENODEV ; 
 int fimc_mask ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(struct device *dev)
{
	int id = FUNC1(dev->of_node, "fimc");

	if (id >= 0 && (FUNC0(id) & fimc_mask))
		return 0;
	return -ENODEV;
}