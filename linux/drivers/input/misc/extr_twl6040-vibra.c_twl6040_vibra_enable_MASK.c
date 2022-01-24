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
struct vibra_info {int enabled; struct twl6040* twl6040; int /*<<< orphan*/  dev; int /*<<< orphan*/  supplies; } ;
struct twl6040 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLL ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLR ; 
 scalar_t__ TWL6040_REV_ES1_1 ; 
 int TWL6040_VIBCTRL ; 
 int TWL6040_VIBENA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct twl6040*) ; 
 int /*<<< orphan*/  FUNC4 (struct twl6040*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct twl6040*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct vibra_info *info)
{
	struct twl6040 *twl6040 = info->twl6040;
	int ret;

	ret = FUNC2(FUNC0(info->supplies), info->supplies);
	if (ret) {
		FUNC1(info->dev, "failed to enable regulators %d\n", ret);
		return;
	}

	FUNC4(info->twl6040, 1);
	if (FUNC3(twl6040) <= TWL6040_REV_ES1_1) {
		/*
		 * ERRATA: Disable overcurrent protection for at least
		 * 3ms when enabling vibrator drivers to avoid false
		 * overcurrent detection
		 */
		FUNC5(twl6040, TWL6040_REG_VIBCTLL,
				  TWL6040_VIBENA | TWL6040_VIBCTRL);
		FUNC5(twl6040, TWL6040_REG_VIBCTLR,
				  TWL6040_VIBENA | TWL6040_VIBCTRL);
		FUNC6(3000, 3500);
	}

	FUNC5(twl6040, TWL6040_REG_VIBCTLL,
			  TWL6040_VIBENA);
	FUNC5(twl6040, TWL6040_REG_VIBCTLR,
			  TWL6040_VIBENA);

	info->enabled = true;
}