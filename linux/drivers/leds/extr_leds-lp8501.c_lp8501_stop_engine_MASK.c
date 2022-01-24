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
 int /*<<< orphan*/  LP8501_REG_OP_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct lp55xx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct lp55xx_chip *chip)
{
	FUNC0(chip, LP8501_REG_OP_MODE, 0);
	FUNC1();
}