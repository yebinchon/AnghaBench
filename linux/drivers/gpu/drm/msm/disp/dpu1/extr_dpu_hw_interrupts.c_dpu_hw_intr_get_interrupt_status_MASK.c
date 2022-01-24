#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dpu_hw_intr {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  clr_off; int /*<<< orphan*/  status_off; } ;
struct TYPE_4__ {int reg_idx; int irq_mask; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* dpu_intr_set ; 
 TYPE_1__* dpu_irq_map ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static u32 FUNC7(struct dpu_hw_intr *intr,
		int irq_idx, bool clear)
{
	int reg_idx;
	unsigned long irq_flags;
	u32 intr_status;

	if (!intr)
		return 0;

	if (irq_idx >= FUNC0(dpu_irq_map) || irq_idx < 0) {
		FUNC3("invalid IRQ index: [%d]\n", irq_idx);
		return 0;
	}

	FUNC4(&intr->irq_lock, irq_flags);

	reg_idx = dpu_irq_map[irq_idx].reg_idx;
	intr_status = FUNC1(&intr->hw,
			dpu_intr_set[reg_idx].status_off) &
					dpu_irq_map[irq_idx].irq_mask;
	if (intr_status && clear)
		FUNC2(&intr->hw, dpu_intr_set[reg_idx].clr_off,
				intr_status);

	/* ensure register writes go through */
	FUNC6();

	FUNC5(&intr->irq_lock, irq_flags);

	return intr_status;
}