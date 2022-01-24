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
 int FUNC0 (struct lp55xx_chip*,int,int*) ; 
 int FUNC1 (struct lp55xx_chip*,int,int) ; 

int FUNC2(struct lp55xx_chip *chip, u8 reg, u8 mask, u8 val)
{
	int ret;
	u8 tmp;

	ret = FUNC0(chip, reg, &tmp);
	if (ret)
		return ret;

	tmp &= ~mask;
	tmp |= val & mask;

	return FUNC1(chip, reg, tmp);
}