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
struct device {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	if (FUNC2(dev->fwnode))
		return FUNC3(dev);
	else if (FUNC1(dev->fwnode))
		return FUNC0(dev);
	return 0;
}