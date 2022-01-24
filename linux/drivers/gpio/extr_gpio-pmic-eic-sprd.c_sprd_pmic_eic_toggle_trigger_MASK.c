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
typedef  int u32 ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_IE ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_IEV ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_TRIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip,
					 unsigned int irq, unsigned int offset)
{
	u32 trigger = FUNC1(irq);
	int state, post_state;

	if (!(trigger & IRQ_TYPE_EDGE_BOTH))
		return;

	state = FUNC2(chip, offset);
retry:
	if (state)
		FUNC3(chip, offset, SPRD_PMIC_EIC_IEV, 0);
	else
		FUNC3(chip, offset, SPRD_PMIC_EIC_IEV, 1);

	post_state = FUNC2(chip, offset);
	if (state != post_state) {
		FUNC0(chip->parent, "PMIC EIC level was changed.\n");
		state = post_state;
		goto retry;
	}

	/* Set irq unmask */
	FUNC3(chip, offset, SPRD_PMIC_EIC_IE, 1);
	/* Generate trigger start pulse for debounce EIC */
	FUNC3(chip, offset, SPRD_PMIC_EIC_TRIG, 1);
}