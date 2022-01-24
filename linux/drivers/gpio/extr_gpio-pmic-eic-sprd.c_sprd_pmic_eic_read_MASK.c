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
typedef  scalar_t__ u16 ;
struct sprd_pmic_eic {scalar_t__ offset; int /*<<< orphan*/  map; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct sprd_pmic_eic* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset,
			      u16 reg)
{
	struct sprd_pmic_eic *pmic_eic = FUNC2(chip);
	u32 value;
	int ret;

	ret = FUNC3(pmic_eic->map, pmic_eic->offset + reg, &value);
	if (ret)
		return ret;

	return !!(value & FUNC0(FUNC1(offset)));
}