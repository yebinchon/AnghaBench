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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct irq_chip_generic {struct al_fic* private; } ;
struct al_fic {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AL_FIC_SET_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_chip_generic* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct irq_data *data)
{
	struct irq_chip_generic *gc = FUNC1(data);
	struct al_fic *fic = gc->private;

	FUNC2(FUNC0(data->hwirq), fic->base + AL_FIC_SET_CAUSE);

	return 1;
}