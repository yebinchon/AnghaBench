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
typedef  int /*<<< orphan*/  u8 ;
struct lp55xx_chip {int engine_idx; } ;
typedef  enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;

/* Variables and functions */
#define  LP5562_LOAD_ENG1 136 
#define  LP5562_LOAD_ENG2 135 
#define  LP5562_LOAD_ENG3 134 
#define  LP5562_MODE_ENG1_M 133 
#define  LP5562_MODE_ENG2_M 132 
#define  LP5562_MODE_ENG3_M 131 
 int /*<<< orphan*/  LP5562_REG_OP_MODE ; 
#define  LP55XX_ENGINE_1 130 
#define  LP55XX_ENGINE_2 129 
#define  LP55XX_ENGINE_3 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(struct lp55xx_chip *chip)
{
	enum lp55xx_engine_index idx = chip->engine_idx;
	static const u8 mask[] = {
		[LP55XX_ENGINE_1] = LP5562_MODE_ENG1_M,
		[LP55XX_ENGINE_2] = LP5562_MODE_ENG2_M,
		[LP55XX_ENGINE_3] = LP5562_MODE_ENG3_M,
	};

	static const u8 val[] = {
		[LP55XX_ENGINE_1] = LP5562_LOAD_ENG1,
		[LP55XX_ENGINE_2] = LP5562_LOAD_ENG2,
		[LP55XX_ENGINE_3] = LP5562_LOAD_ENG3,
	};

	FUNC1(chip, LP5562_REG_OP_MODE, mask[idx], val[idx]);

	FUNC0();
}