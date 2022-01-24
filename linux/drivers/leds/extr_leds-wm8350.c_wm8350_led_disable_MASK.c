#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct wm8350_led {scalar_t__ enabled; TYPE_1__ cdev; int /*<<< orphan*/  dcdc; int /*<<< orphan*/  isink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wm8350_led *led)
{
	int ret = 0;

	if (!led->enabled)
		return ret;

	ret = FUNC1(led->dcdc);
	if (ret != 0) {
		FUNC0(led->cdev.dev, "Failed to disable DCDC: %d\n", ret);
		return ret;
	}

	ret = FUNC1(led->isink);
	if (ret != 0) {
		FUNC0(led->cdev.dev, "Failed to disable ISINK: %d\n", ret);
		ret = FUNC2(led->dcdc);
		if (ret != 0)
			FUNC0(led->cdev.dev, "Failed to reenable DCDC: %d\n",
				ret);
		return ret;
	}

	led->enabled = 0;

	return ret;
}