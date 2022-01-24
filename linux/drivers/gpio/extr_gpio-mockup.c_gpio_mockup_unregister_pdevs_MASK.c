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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int GPIO_MOCKUP_MAX_GC ; 
 struct platform_device** gpio_mockup_pdevs ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 

__attribute__((used)) static void FUNC1(void)
{
	struct platform_device *pdev;
	int i;

	for (i = 0; i < GPIO_MOCKUP_MAX_GC; i++) {
		pdev = gpio_mockup_pdevs[i];

		if (pdev)
			FUNC0(pdev);
	}
}