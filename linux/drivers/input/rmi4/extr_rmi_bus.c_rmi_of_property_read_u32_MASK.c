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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

int FUNC2(struct device *dev, u32 *result,
				const char *prop, bool optional)
{
	int retval;
	u32 val = 0;

	retval = FUNC1(dev->of_node, prop, &val);
	if (retval && (!optional && retval == -EINVAL)) {
		FUNC0(dev, "Failed to get %s value: %d\n",
			prop, retval);
		return retval;
	}
	*result = val;

	return 0;
}