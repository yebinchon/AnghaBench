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
struct gpio_rcar_priv {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OUTDT ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct gpio_rcar_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	struct gpio_rcar_priv *p = FUNC1(chip);
	unsigned long flags;

	FUNC2(&p->lock, flags);
	FUNC0(p, OUTDT, offset, value);
	FUNC3(&p->lock, flags);
}