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
typedef  int u8 ;
typedef  int u32 ;
struct pca953x_chip {int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  regmap; TYPE_1__* regs; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 unsigned int BANK_SZ ; 
 int FUNC0 (unsigned int) ; 
 struct pca953x_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pca953x_chip*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned off)
{
	struct pca953x_chip *chip = FUNC1(gc);
	u8 inreg = FUNC4(chip, chip->regs->input, off,
				       true, false);
	u8 bit = FUNC0(off % BANK_SZ);
	u32 reg_val;
	int ret;

	FUNC2(&chip->i2c_lock);
	ret = FUNC5(chip->regmap, inreg, &reg_val);
	FUNC3(&chip->i2c_lock);
	if (ret < 0) {
		/* NOTE:  diagnostic already emitted; that's all we should
		 * do unless gpio_*_value_cansleep() calls become different
		 * from their nonsleeping siblings (and report faults).
		 */
		return 0;
	}

	return !!(reg_val & bit);
}