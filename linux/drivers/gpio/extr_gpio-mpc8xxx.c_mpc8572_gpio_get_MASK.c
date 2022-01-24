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
typedef  int u32 ;
struct mpc8xxx_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int (* read_reg ) (scalar_t__) ;int bgpio_data; } ;

/* Variables and functions */
 scalar_t__ GPIO_DAT ; 
 scalar_t__ GPIO_DIR ; 
 struct mpc8xxx_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned int gpio)
{
	u32 val;
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC0(gc);
	u32 out_mask, out_shadow;

	out_mask = gc->read_reg(mpc8xxx_gc->regs + GPIO_DIR);
	val = gc->read_reg(mpc8xxx_gc->regs + GPIO_DAT) & ~out_mask;
	out_shadow = gc->bgpio_data & out_mask;

	return !!((val | out_shadow) & FUNC1(gpio));
}