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
struct lp55xx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP5562_CMD_DISABLE ; 
 int /*<<< orphan*/  LP5562_REG_OP_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lp55xx_chip *chip)
{
	FUNC1(chip, LP5562_REG_OP_MODE, LP5562_CMD_DISABLE);
	FUNC0();
}