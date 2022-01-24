#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct tc3589x_gpio {TYPE_2__ chip; struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int CACHE_NR_BANKS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ TC3589x_GPIOIC0 ; 
 int /*<<< orphan*/  TC3589x_GPIOMIS0 ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tc3589x*,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct tc3589x*,scalar_t__,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev)
{
	struct tc3589x_gpio *tc3589x_gpio = dev;
	struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
	u8 status[CACHE_NR_BANKS];
	int ret;
	int i;

	ret = FUNC4(tc3589x, TC3589x_GPIOMIS0,
				 FUNC0(status), status);
	if (ret < 0)
		return IRQ_NONE;

	for (i = 0; i < FUNC0(status); i++) {
		unsigned int stat = status[i];
		if (!stat)
			continue;

		while (stat) {
			int bit = FUNC1(stat);
			int line = i * 8 + bit;
			int irq = FUNC3(tc3589x_gpio->chip.irq.domain,
						   line);

			FUNC2(irq);
			stat &= ~(1 << bit);
		}

		FUNC5(tc3589x, TC3589x_GPIOIC0 + i, status[i]);
	}

	return IRQ_HANDLED;
}