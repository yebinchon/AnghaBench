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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int,char*) ; 

int FUNC6(int pipe)
{
	unsigned gpio;
	int ret = 0;

	switch (pipe) {
	case 0:
		gpio = 128;
		break;
	case 2:
		gpio = 34;
		break;
	default:
		FUNC0("Invalid output\n");
		return -EINVAL;
	}

	ret = FUNC5(gpio, "gfx");
	if (ret) {
		FUNC0("gpio_rqueset failed\n");
		return ret;
	}

	ret = FUNC1(gpio, 1);
	if (ret) {
		FUNC0("gpio_direction_output failed\n");
		goto gpio_error;
	}

	FUNC3(128);

gpio_error:
	if (FUNC4(gpio))
		FUNC2(gpio);

	return ret;
}