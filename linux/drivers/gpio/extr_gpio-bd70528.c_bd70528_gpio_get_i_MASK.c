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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_REG_GPIO_STATE ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct bd70528_gpio *bdgpio, unsigned int offset)
{
	unsigned int val;
	int ret;

	ret = FUNC2(bdgpio->chip.regmap, BD70528_REG_GPIO_STATE, &val);

	if (!ret)
		ret = !(val & FUNC0(offset));
	else
		FUNC1(bdgpio->chip.dev, "GPIO (in) state read failed\n");

	return ret;
}