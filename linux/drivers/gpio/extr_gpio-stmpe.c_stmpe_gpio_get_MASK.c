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
struct stmpe_gpio {struct stmpe* stmpe; } ;
struct stmpe {int* regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int STMPE_IDX_GPMR_LSB ; 
 struct stmpe_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct stmpe*,int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct stmpe_gpio *stmpe_gpio = FUNC1(chip);
	struct stmpe *stmpe = stmpe_gpio->stmpe;
	u8 reg = stmpe->regs[STMPE_IDX_GPMR_LSB + (offset / 8)];
	u8 mask = FUNC0(offset % 8);
	int ret;

	ret = FUNC2(stmpe, reg);
	if (ret < 0)
		return ret;

	return !!(ret & mask);
}