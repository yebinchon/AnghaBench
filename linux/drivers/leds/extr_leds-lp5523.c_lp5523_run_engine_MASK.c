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
 int LP5523_EXEC_ENG1_M ; 
 int LP5523_EXEC_ENG2_M ; 
 int LP5523_EXEC_ENG3_M ; 
 int /*<<< orphan*/  LP5523_EXEC_M ; 
 int LP5523_MODE_ENG1_M ; 
 int LP5523_MODE_ENG2_M ; 
 int LP5523_MODE_ENG3_M ; 
 int /*<<< orphan*/  LP5523_REG_ENABLE ; 
 int /*<<< orphan*/  LP5523_REG_OP_MODE ; 
 int LP5523_RUN_ENG1 ; 
 int LP5523_RUN_ENG2 ; 
 int LP5523_RUN_ENG3 ; 
 int /*<<< orphan*/  FUNC3 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct lp55xx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lp55xx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct lp55xx_chip *chip, bool start)
{
	int ret;
	u8 mode;
	u8 exec;

	/* stop engine */
	if (!start) {
		FUNC3(chip);
		FUNC4(chip);
		return;
	}

	/*
	 * To run the engine,
	 * operation mode and enable register should updated at the same time
	 */

	ret = FUNC6(chip, LP5523_REG_OP_MODE, &mode);
	if (ret)
		return;

	ret = FUNC6(chip, LP5523_REG_ENABLE, &exec);
	if (ret)
		return;

	/* change operation mode to RUN only when each engine is loading */
	if (FUNC0(mode)) {
		mode = (mode & ~LP5523_MODE_ENG1_M) | LP5523_RUN_ENG1;
		exec = (exec & ~LP5523_EXEC_ENG1_M) | LP5523_RUN_ENG1;
	}

	if (FUNC1(mode)) {
		mode = (mode & ~LP5523_MODE_ENG2_M) | LP5523_RUN_ENG2;
		exec = (exec & ~LP5523_EXEC_ENG2_M) | LP5523_RUN_ENG2;
	}

	if (FUNC2(mode)) {
		mode = (mode & ~LP5523_MODE_ENG3_M) | LP5523_RUN_ENG3;
		exec = (exec & ~LP5523_EXEC_ENG3_M) | LP5523_RUN_ENG3;
	}

	FUNC8(chip, LP5523_REG_OP_MODE, mode);
	FUNC5();

	FUNC7(chip, LP5523_REG_ENABLE, LP5523_EXEC_M, exec);
}