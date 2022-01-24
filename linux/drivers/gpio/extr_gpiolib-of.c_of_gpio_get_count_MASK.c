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
typedef  int /*<<< orphan*/  propname ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int ENOENT ; 
 char** gpio_suffixes ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,...) ; 

int FUNC3(struct device *dev, const char *con_id)
{
	int ret;
	char propname[32];
	unsigned int i;

	for (i = 0; i < FUNC0(gpio_suffixes); i++) {
		if (con_id)
			FUNC2(propname, sizeof(propname), "%s-%s",
				 con_id, gpio_suffixes[i]);
		else
			FUNC2(propname, sizeof(propname), "%s",
				 gpio_suffixes[i]);

		ret = FUNC1(dev->of_node, propname);
		if (ret > 0)
			break;
	}
	return ret ? ret : -ENOENT;
}