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
struct lpc32xx_gpio_chip {TYPE_1__* gpio_grp; } ;
struct TYPE_2__ {int /*<<< orphan*/  inp_state; } ;

/* Variables and functions */
 int FUNC0 (int,unsigned int) ; 
 int FUNC1 (struct lpc32xx_gpio_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lpc32xx_gpio_chip *group,
	unsigned pin)
{
	int state = FUNC1(group, group->gpio_grp->inp_state);

	/*
	 * P3 GPIO pin input mapping is not contiguous, GPIOP3-0..4 is mapped
	 * to bits 10..14, while GPIOP3-5 is mapped to bit 24.
	 */
	return FUNC0(state, pin);
}