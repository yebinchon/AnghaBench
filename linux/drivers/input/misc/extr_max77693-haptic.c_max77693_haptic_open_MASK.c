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
struct max77693_haptic {int /*<<< orphan*/  dev; int /*<<< orphan*/  motor_reg; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct max77693_haptic* FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct max77693_haptic*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct max77693_haptic *haptic = FUNC1(dev);
	int error;

	error = FUNC2(haptic, true);
	if (error)
		return error;

	error = FUNC3(haptic->motor_reg);
	if (error) {
		FUNC0(haptic->dev,
			"failed to enable regulator: %d\n", error);
		return error;
	}

	return 0;
}