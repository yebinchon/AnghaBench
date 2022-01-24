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
struct max77693_haptic {int /*<<< orphan*/  dev; int /*<<< orphan*/  motor_reg; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct max77693_haptic* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct max77693_haptic*) ; 
 int /*<<< orphan*/  FUNC4 (struct max77693_haptic*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct max77693_haptic *haptic = FUNC2(dev);
	int error;

	FUNC0(&haptic->work);
	FUNC3(haptic);

	error = FUNC5(haptic->motor_reg);
	if (error)
		FUNC1(haptic->dev,
			"failed to disable regulator: %d\n", error);

	FUNC4(haptic, false);
}