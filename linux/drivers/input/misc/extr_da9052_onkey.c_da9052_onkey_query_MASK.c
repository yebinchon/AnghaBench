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
struct da9052_onkey {int /*<<< orphan*/  work; int /*<<< orphan*/  input; TYPE_1__* da9052; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DA9052_STATUSA_NONKEY ; 
 int /*<<< orphan*/  DA9052_STATUS_A_REG ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct da9052_onkey *onkey)
{
	int ret;

	ret = FUNC0(onkey->da9052, DA9052_STATUS_A_REG);
	if (ret < 0) {
		FUNC1(onkey->da9052->dev,
			"Failed to read onkey event err=%d\n", ret);
	} else {
		/*
		 * Since interrupt for deassertion of ONKEY pin is not
		 * generated, onkey event state determines the onkey
		 * button state.
		 */
		bool pressed = !(ret & DA9052_STATUSA_NONKEY);

		FUNC2(onkey->input, KEY_POWER, pressed);
		FUNC3(onkey->input);

		/*
		 * Interrupt is generated only when the ONKEY pin
		 * is asserted.  Hence the deassertion of the pin
		 * is simulated through work queue.
		 */
		if (pressed)
			FUNC5(&onkey->work,
						FUNC4(50));
	}
}