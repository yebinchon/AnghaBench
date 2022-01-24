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
struct pl061 {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ GPIOIE ; 
 int PL061_GPIO_NR ; 
 struct pl061* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct pl061 *pl061 = FUNC1(gc);
	u8 mask = FUNC0(FUNC3(d) % PL061_GPIO_NR);
	u8 gpioie;

	FUNC4(&pl061->lock);
	gpioie = FUNC6(pl061->base + GPIOIE) | mask;
	FUNC7(gpioie, pl061->base + GPIOIE);
	FUNC5(&pl061->lock);
}