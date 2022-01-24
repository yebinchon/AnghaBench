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
struct lp55xx_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int LP8501_EXEC_ENG1_M ; 
 int LP8501_EXEC_ENG2_M ; 
 int LP8501_EXEC_ENG3_M ; 
 int /*<<< orphan*/  LP8501_EXEC_M ; 
 int LP8501_MODE_ENG1_M ; 
 int LP8501_MODE_ENG2_M ; 
 int LP8501_MODE_ENG3_M ; 
 int /*<<< orphan*/  LP8501_REG_ENABLE ; 
 int /*<<< orphan*/  LP8501_REG_OP_MODE ; 
 int LP8501_RUN_ENG1 ; 
 int LP8501_RUN_ENG2 ; 
 int LP8501_RUN_ENG3 ; 
 int FUNC3 (struct lp55xx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lp55xx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct lp55xx_chip *chip, bool start)
{
	int ret;
	u8 mode;
	u8 exec;

	/* stop engine */
	if (!start) {
		FUNC6(chip);
		FUNC7(chip);
		return;
	}

	/*
	 * To run the engine,
	 * operation mode and enable register should updated at the same time
	 */

	ret = FUNC3(chip, LP8501_REG_OP_MODE, &mode);
	if (ret)
		return;

	ret = FUNC3(chip, LP8501_REG_ENABLE, &exec);
	if (ret)
		return;

	/* change operation mode to RUN only when each engine is loading */
	if (FUNC0(mode)) {
		mode = (mode & ~LP8501_MODE_ENG1_M) | LP8501_RUN_ENG1;
		exec = (exec & ~LP8501_EXEC_ENG1_M) | LP8501_RUN_ENG1;
	}

	if (FUNC1(mode)) {
		mode = (mode & ~LP8501_MODE_ENG2_M) | LP8501_RUN_ENG2;
		exec = (exec & ~LP8501_EXEC_ENG2_M) | LP8501_RUN_ENG2;
	}

	if (FUNC2(mode)) {
		mode = (mode & ~LP8501_MODE_ENG3_M) | LP8501_RUN_ENG3;
		exec = (exec & ~LP8501_EXEC_ENG3_M) | LP8501_RUN_ENG3;
	}

	FUNC5(chip, LP8501_REG_OP_MODE, mode);
	FUNC8();

	FUNC4(chip, LP8501_REG_ENABLE, LP8501_EXEC_M, exec);
}