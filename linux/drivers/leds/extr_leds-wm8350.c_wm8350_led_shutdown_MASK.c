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
struct wm8350_led {int /*<<< orphan*/  value; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 struct wm8350_led* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350_led*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct wm8350_led *led = FUNC0(pdev);

	led->value = LED_OFF;
	FUNC1(led);
}