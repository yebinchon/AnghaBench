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
struct crystalcove_gpio {int /*<<< orphan*/  intcnt_value; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLI_INTCNT_BE ; 
 int /*<<< orphan*/  CTRL_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct crystalcove_gpio *cg, int gpio)
{
	int reg = FUNC1(gpio, CTRL_IN);

	FUNC0(cg->regmap, reg, CTLI_INTCNT_BE, cg->intcnt_value);
}