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
struct ktd2692_context {int /*<<< orphan*/  aux_gpio; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  KTD2692_LOW ; 
 int KTD2692_MM_MIN_CURR_THRESHOLD_SCALE ; 
 int /*<<< orphan*/  KTD2692_MODE_DISABLE ; 
 int KTD2692_REG_FLASH_CURRENT_BASE ; 
 int KTD2692_REG_MM_MIN_CURR_THRESHOLD_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ktd2692_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ktd2692_context*,int) ; 

__attribute__((used)) static void FUNC4(struct ktd2692_context *led)
{
	led->mode = KTD2692_MODE_DISABLE;
	FUNC2(led);
	FUNC1(led->aux_gpio, KTD2692_LOW);

	FUNC3(led, (KTD2692_MM_MIN_CURR_THRESHOLD_SCALE - 1)
				 | KTD2692_REG_MM_MIN_CURR_THRESHOLD_BASE);
	FUNC3(led, FUNC0(45)
				 | KTD2692_REG_FLASH_CURRENT_BASE);
}