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
struct gpio_rcar_priv {int /*<<< orphan*/  dev; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 struct gpio_rcar_priv* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_rcar_priv *p = FUNC0(chip);
	int error;

	error = FUNC2(p->dev);
	if (error < 0)
		return error;

	error = FUNC1(chip->base + offset);
	if (error)
		FUNC3(p->dev);

	return error;
}