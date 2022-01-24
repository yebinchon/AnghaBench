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
struct gpio_rcar_priv {int /*<<< orphan*/  lock; scalar_t__ has_both_edge_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  BOTHEDGE ; 
 int /*<<< orphan*/  EDGLEVEL ; 
 int /*<<< orphan*/  INTCLR ; 
 int /*<<< orphan*/  IOINTSEL ; 
 int /*<<< orphan*/  POSNEG ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_rcar_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct gpio_rcar_priv *p,
						  unsigned int hwirq,
						  bool active_high_rising_edge,
						  bool level_trigger,
						  bool both)
{
	unsigned long flags;

	/* follow steps in the GPIO documentation for
	 * "Setting Edge-Sensitive Interrupt Input Mode" and
	 * "Setting Level-Sensitive Interrupt Input Mode"
	 */

	FUNC3(&p->lock, flags);

	/* Configure postive or negative logic in POSNEG */
	FUNC1(p, POSNEG, hwirq, !active_high_rising_edge);

	/* Configure edge or level trigger in EDGLEVEL */
	FUNC1(p, EDGLEVEL, hwirq, !level_trigger);

	/* Select one edge or both edges in BOTHEDGE */
	if (p->has_both_edge_trigger)
		FUNC1(p, BOTHEDGE, hwirq, both);

	/* Select "Interrupt Input Mode" in IOINTSEL */
	FUNC1(p, IOINTSEL, hwirq, true);

	/* Write INTCLR in case of edge trigger */
	if (!level_trigger)
		FUNC2(p, INTCLR, FUNC0(hwirq));

	FUNC4(&p->lock, flags);
}