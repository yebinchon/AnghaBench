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
struct max77693_led_device {int allowed_modes; } ;
typedef  enum max77693_led_mode { ____Placeholder_max77693_led_mode } max77693_led_mode ;

/* Variables and functions */
 int FLASH ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct max77693_led_device *led,
				int fled_id, enum max77693_led_mode mode)
{
	if (mode == FLASH)
		led->allowed_modes |= (FUNC0(fled_id) |
				       FUNC1(fled_id));
	else
		led->allowed_modes |= FUNC2(fled_id);
}