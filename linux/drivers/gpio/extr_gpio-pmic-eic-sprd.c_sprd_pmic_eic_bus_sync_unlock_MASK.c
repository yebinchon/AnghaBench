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
struct sprd_pmic_eic {int* reg; int /*<<< orphan*/  buslock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_BOTH ; 
 size_t REG_IE ; 
 size_t REG_IEV ; 
 size_t REG_TRIG ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_IE ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_IEV ; 
 int /*<<< orphan*/  SPRD_PMIC_EIC_TRIG ; 
 struct sprd_pmic_eic* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct gpio_chip*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_chip*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC1(data);
	struct sprd_pmic_eic *pmic_eic = FUNC0(chip);
	u32 trigger = FUNC2(data);
	u32 offset = FUNC3(data);
	int state;

	/* Set irq type */
	if (trigger & IRQ_TYPE_EDGE_BOTH) {
		state = FUNC5(chip, offset);
		if (state)
			FUNC6(chip, offset, SPRD_PMIC_EIC_IEV, 0);
		else
			FUNC6(chip, offset, SPRD_PMIC_EIC_IEV, 1);
	} else {
		FUNC6(chip, offset, SPRD_PMIC_EIC_IEV,
				     pmic_eic->reg[REG_IEV]);
	}

	/* Set irq unmask */
	FUNC6(chip, offset, SPRD_PMIC_EIC_IE,
			     pmic_eic->reg[REG_IE]);
	/* Generate trigger start pulse for debounce EIC */
	FUNC6(chip, offset, SPRD_PMIC_EIC_TRIG,
			     pmic_eic->reg[REG_TRIG]);

	FUNC4(&pmic_eic->buslock);
}