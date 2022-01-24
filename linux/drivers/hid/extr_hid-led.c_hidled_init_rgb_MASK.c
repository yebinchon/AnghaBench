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
struct hidled_rgb {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,struct hidled_rgb*,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct hidled_rgb *rgb, unsigned int minor)
{
	int ret;

	/* Register the red diode */
	ret = FUNC0(&rgb->red, "red", rgb, minor);
	if (ret)
		return ret;

	/* Register the green diode */
	ret = FUNC0(&rgb->green, "green", rgb, minor);
	if (ret)
		return ret;

	/* Register the blue diode */
	return FUNC0(&rgb->blue, "blue", rgb, minor);
}