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
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  CONFIG_ACPI ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,char const*) ; 
 int FUNC3 (struct device*,char const*) ; 
 int FUNC4 (struct device*,char const*) ; 

int FUNC5(struct device *dev, const char *con_id)
{
	int count = -ENOENT;

	if (FUNC1(CONFIG_OF) && dev && dev->of_node)
		count = FUNC3(dev, con_id);
	else if (FUNC1(CONFIG_ACPI) && dev && FUNC0(dev))
		count = FUNC2(dev, con_id);

	if (count < 0)
		count = FUNC4(dev, con_id);

	return count;
}