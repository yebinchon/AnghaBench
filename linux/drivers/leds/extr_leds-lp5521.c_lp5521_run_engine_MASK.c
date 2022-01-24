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
 int LP5521_CMD_DIRECT ; 
 int LP5521_EXEC_B_M ; 
 int LP5521_EXEC_G_M ; 
 int /*<<< orphan*/  LP5521_EXEC_M ; 
 int LP5521_EXEC_R_M ; 
 scalar_t__ FUNC1 (int) ; 
 int LP5521_MODE_B_M ; 
 int LP5521_MODE_G_M ; 
 int LP5521_MODE_R_M ; 
 int /*<<< orphan*/  LP5521_REG_ENABLE ; 
 int /*<<< orphan*/  LP5521_REG_OP_MODE ; 
 int LP5521_RUN_B ; 
 int LP5521_RUN_G ; 
 int LP5521_RUN_R ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
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
		FUNC8(chip, LP5521_REG_OP_MODE, LP5521_CMD_DIRECT);
		FUNC5();
		return;
	}

	/*
	 * To run the engine,
	 * operation mode and enable register should updated at the same time
	 */

	ret = FUNC6(chip, LP5521_REG_OP_MODE, &mode);
	if (ret)
		return;

	ret = FUNC6(chip, LP5521_REG_ENABLE, &exec);
	if (ret)
		return;

	/* change operation mode to RUN only when each engine is loading */
	if (FUNC2(mode)) {
		mode = (mode & ~LP5521_MODE_R_M) | LP5521_RUN_R;
		exec = (exec & ~LP5521_EXEC_R_M) | LP5521_RUN_R;
	}

	if (FUNC1(mode)) {
		mode = (mode & ~LP5521_MODE_G_M) | LP5521_RUN_G;
		exec = (exec & ~LP5521_EXEC_G_M) | LP5521_RUN_G;
	}

	if (FUNC0(mode)) {
		mode = (mode & ~LP5521_MODE_B_M) | LP5521_RUN_B;
		exec = (exec & ~LP5521_EXEC_B_M) | LP5521_RUN_B;
	}

	FUNC8(chip, LP5521_REG_OP_MODE, mode);
	FUNC5();

	FUNC7(chip, LP5521_REG_ENABLE, LP5521_EXEC_M, exec);
	FUNC4();
}