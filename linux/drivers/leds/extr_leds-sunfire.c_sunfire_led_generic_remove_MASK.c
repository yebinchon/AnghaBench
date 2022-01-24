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
struct sunfire_drvdata {TYPE_1__* leds; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  led_cdev; } ;

/* Variables and functions */
 int NUM_LEDS_PER_BOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sunfire_drvdata* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct sunfire_drvdata *p = FUNC1(pdev);
	int i;

	for (i = 0; i < NUM_LEDS_PER_BOARD; i++)
		FUNC0(&p->leds[i].led_cdev);

	return 0;
}