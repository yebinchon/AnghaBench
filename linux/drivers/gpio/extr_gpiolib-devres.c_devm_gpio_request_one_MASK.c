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
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_gpio_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,unsigned int*) ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int FUNC3 (unsigned int,unsigned long,char const*) ; 

int FUNC4(struct device *dev, unsigned gpio,
			  unsigned long flags, const char *label)
{
	unsigned *dr;
	int rc;

	dr = FUNC1(devm_gpio_release, sizeof(unsigned), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	rc = FUNC3(gpio, flags, label);
	if (rc) {
		FUNC2(dr);
		return rc;
	}

	*dr = gpio;
	FUNC0(dev, dr);

	return 0;
}