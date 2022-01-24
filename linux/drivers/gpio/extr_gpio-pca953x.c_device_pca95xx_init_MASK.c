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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct pca953x_chip {TYPE_1__* regs; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  invert; scalar_t__ direction; scalar_t__ output; } ;

/* Variables and functions */
 int MAX_BANK ; 
 scalar_t__ FUNC0 (struct pca953x_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC2 (struct pca953x_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pca953x_chip *chip, u32 invert)
{
	int ret;
	u8 val[MAX_BANK];

	ret = FUNC3(chip->regmap, chip->regs->output,
				   chip->regs->output + FUNC0(chip));
	if (ret)
		goto out;

	ret = FUNC3(chip->regmap, chip->regs->direction,
				   chip->regs->direction + FUNC0(chip));
	if (ret)
		goto out;

	/* set platform specific polarity inversion */
	if (invert)
		FUNC1(val, 0xFF, FUNC0(chip));
	else
		FUNC1(val, 0, FUNC0(chip));

	ret = FUNC2(chip, chip->regs->invert, val);
out:
	return ret;
}