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
struct sprd_pmic_eic {int* reg; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 size_t REG_IE ; 
 size_t REG_TRIG ; 
 struct sprd_pmic_eic* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC1(data);
	struct sprd_pmic_eic *pmic_eic = FUNC0(chip);

	pmic_eic->reg[REG_IE] = 1;
	pmic_eic->reg[REG_TRIG] = 1;
}