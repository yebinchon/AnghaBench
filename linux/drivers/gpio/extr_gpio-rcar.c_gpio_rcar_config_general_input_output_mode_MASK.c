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
struct gpio_rcar_priv {int /*<<< orphan*/  lock; scalar_t__ has_outdtsel; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INOUTSEL ; 
 int /*<<< orphan*/  IOINTSEL ; 
 int /*<<< orphan*/  OUTDTSEL ; 
 int /*<<< orphan*/  POSNEG ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct gpio_rcar_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip,
						       unsigned int gpio,
						       bool output)
{
	struct gpio_rcar_priv *p = FUNC1(chip);
	unsigned long flags;

	/* follow steps in the GPIO documentation for
	 * "Setting General Output Mode" and
	 * "Setting General Input Mode"
	 */

	FUNC2(&p->lock, flags);

	/* Configure postive logic in POSNEG */
	FUNC0(p, POSNEG, gpio, false);

	/* Select "General Input/Output Mode" in IOINTSEL */
	FUNC0(p, IOINTSEL, gpio, false);

	/* Select Input Mode or Output Mode in INOUTSEL */
	FUNC0(p, INOUTSEL, gpio, output);

	/* Select General Output Register to output data in OUTDTSEL */
	if (p->has_outdtsel && output)
		FUNC0(p, OUTDTSEL, gpio, false);

	FUNC3(&p->lock, flags);
}