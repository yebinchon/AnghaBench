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
struct locomo_dev {scalar_t__ mapbase; } ;
struct led_classdev {TYPE_1__* dev; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct locomo_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCOMO_LPT_TOFH ; 
 int /*<<< orphan*/  LOCOMO_LPT_TOFL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev,
				enum led_brightness value, int offset)
{
	struct locomo_dev *locomo_dev = FUNC0(led_cdev->dev->parent);
	unsigned long flags;

	FUNC2(flags);
	if (value)
		FUNC3(LOCOMO_LPT_TOFH, locomo_dev->mapbase + offset);
	else
		FUNC3(LOCOMO_LPT_TOFL, locomo_dev->mapbase + offset);
	FUNC1(flags);
}