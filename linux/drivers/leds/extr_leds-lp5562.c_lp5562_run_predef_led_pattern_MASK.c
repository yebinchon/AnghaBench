#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lp55xx_predef_pattern {int /*<<< orphan*/  size_b; int /*<<< orphan*/  b; int /*<<< orphan*/  size_g; int /*<<< orphan*/  g; int /*<<< orphan*/  size_r; int /*<<< orphan*/  r; } ;
struct lp55xx_chip {int engine_idx; TYPE_2__* cl; TYPE_1__* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct lp55xx_predef_pattern* patterns; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LP5562_ENG_SEL_RGB ; 
 int LP5562_PATTERN_OFF ; 
 scalar_t__ LP5562_REG_ENG_SEL ; 
 scalar_t__ LP5562_REG_PROG_MEM_ENG1 ; 
 scalar_t__ LP5562_REG_PROG_MEM_ENG2 ; 
 scalar_t__ LP5562_REG_PROG_MEM_ENG3 ; 
 int LP55XX_ENGINE_1 ; 
 int LP55XX_ENGINE_3 ; 
 scalar_t__ FUNC0 (struct lp55xx_predef_pattern*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct lp55xx_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct lp55xx_chip*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lp55xx_chip*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lp55xx_chip *chip, int mode)
{
	struct lp55xx_predef_pattern *ptn;
	int i;

	if (mode == LP5562_PATTERN_OFF) {
		FUNC3(chip, false);
		return 0;
	}

	ptn = chip->pdata->patterns + (mode - 1);
	if (!ptn || FUNC0(ptn)) {
		FUNC1(&chip->cl->dev, "invalid pattern data\n");
		return -EINVAL;
	}

	FUNC4(chip);

	/* Set LED map as RGB */
	FUNC6(chip, LP5562_REG_ENG_SEL, LP5562_ENG_SEL_RGB);

	/* Load engines */
	for (i = LP55XX_ENGINE_1; i <= LP55XX_ENGINE_3; i++) {
		chip->engine_idx = i;
		FUNC2(chip);
	}

	/* Clear program registers */
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG1, 0);
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG1 + 1, 0);
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG2, 0);
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG2 + 1, 0);
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG3, 0);
	FUNC6(chip, LP5562_REG_PROG_MEM_ENG3 + 1, 0);

	/* Program engines */
	FUNC5(chip, LP5562_REG_PROG_MEM_ENG1,
				ptn->r, ptn->size_r);
	FUNC5(chip, LP5562_REG_PROG_MEM_ENG2,
				ptn->g, ptn->size_g);
	FUNC5(chip, LP5562_REG_PROG_MEM_ENG3,
				ptn->b, ptn->size_b);

	/* Run engines */
	FUNC3(chip, true);

	return 0;
}