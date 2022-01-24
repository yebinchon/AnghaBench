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
typedef  unsigned int u32 ;
struct sprd_pmic_eic {unsigned int offset; int /*<<< orphan*/  map; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int SPRD_PMIC_EIC_CTRL0 ; 
 unsigned int SPRD_PMIC_EIC_DBNC_MASK ; 
 struct sprd_pmic_eic* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
				      unsigned int offset,
				      unsigned int debounce)
{
	struct sprd_pmic_eic *pmic_eic = FUNC1(chip);
	u32 reg, value;
	int ret;

	reg = SPRD_PMIC_EIC_CTRL0 + FUNC0(offset) * 0x4;
	ret = FUNC2(pmic_eic->map, pmic_eic->offset + reg, &value);
	if (ret)
		return ret;

	value &= ~SPRD_PMIC_EIC_DBNC_MASK;
	value |= (debounce / 1000) & SPRD_PMIC_EIC_DBNC_MASK;
	return FUNC3(pmic_eic->map, pmic_eic->offset + reg, value);
}