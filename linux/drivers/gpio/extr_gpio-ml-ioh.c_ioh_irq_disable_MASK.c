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
typedef  int u32 ;
struct irq_data {int irq; } ;
struct irq_chip_generic {struct ioh_gpio* private; } ;
struct ioh_gpio {size_t ch; int irq_base; int /*<<< orphan*/  spinlock; TYPE_2__* reg; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  ien; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct irq_chip_generic* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC2(d);
	struct ioh_gpio *chip = gc->private;
	unsigned long flags;
	u32 ien;

	FUNC3(&chip->spinlock, flags);
	ien = FUNC0(&chip->reg->regs[chip->ch].ien);
	ien &= ~(1 << (d->irq - chip->irq_base));
	FUNC1(ien, &chip->reg->regs[chip->ch].ien);
	FUNC4(&chip->spinlock, flags);
}