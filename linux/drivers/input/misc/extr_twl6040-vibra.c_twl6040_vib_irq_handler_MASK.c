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
typedef  int u8 ;
struct vibra_info {int /*<<< orphan*/  dev; struct twl6040* twl6040; } ;
struct twl6040 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TWL6040_REG_STATUS ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLL ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLR ; 
 int /*<<< orphan*/  TWL6040_VIBENA ; 
 int TWL6040_VIBLOCDET ; 
 int TWL6040_VIBROCDET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl6040*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct twl6040*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct vibra_info *info = data;
	struct twl6040 *twl6040 = info->twl6040;
	u8 status;

	status = FUNC2(twl6040, TWL6040_REG_STATUS);
	if (status & TWL6040_VIBLOCDET) {
		FUNC0(info->dev, "Left Vibrator overcurrent detected\n");
		FUNC1(twl6040, TWL6040_REG_VIBCTLL,
				   TWL6040_VIBENA);
	}
	if (status & TWL6040_VIBROCDET) {
		FUNC0(info->dev, "Right Vibrator overcurrent detected\n");
		FUNC1(twl6040, TWL6040_REG_VIBCTLR,
				   TWL6040_VIBENA);
	}

	return IRQ_HANDLED;
}