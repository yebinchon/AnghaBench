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
struct max77693_haptic {int enabled; int /*<<< orphan*/  pwm_dev; } ;

/* Variables and functions */
 int FUNC0 (struct max77693_haptic*,int) ; 
 int FUNC1 (struct max77693_haptic*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct max77693_haptic *haptic)
{
	int error;

	if (!haptic->enabled)
		return;

	error = FUNC0(haptic, false);
	if (error)
		return;

	error = FUNC1(haptic, false);
	if (error)
		goto err_disable_lowsys;

	FUNC2(haptic->pwm_dev);
	haptic->enabled = false;

	return;

err_disable_lowsys:
	FUNC0(haptic, true);
}