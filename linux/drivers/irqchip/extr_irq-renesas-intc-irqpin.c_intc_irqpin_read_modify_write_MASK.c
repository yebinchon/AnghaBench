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
struct intc_irqpin_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  intc_irqpin_lock ; 
 unsigned long FUNC0 (struct intc_irqpin_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intc_irqpin_priv*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct intc_irqpin_priv *p,
					  int reg, int shift,
					  int width, int value)
{
	unsigned long flags;
	unsigned long tmp;

	FUNC2(&intc_irqpin_lock, flags);

	tmp = FUNC0(p, reg);
	tmp &= ~(((1 << width) - 1) << shift);
	tmp |= value << shift;
	FUNC1(p, reg, tmp);

	FUNC3(&intc_irqpin_lock, flags);
}