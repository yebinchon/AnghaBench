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
struct dpu_hw_intr {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_hw_intr*,int) ; 
 int /*<<< orphan*/  dpu_irq_map ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct dpu_hw_intr *intr, int irq_idx)
{
	unsigned long irq_flags;

	if (!intr)
		return -EINVAL;

	if (irq_idx < 0 || irq_idx >= FUNC0(dpu_irq_map)) {
		FUNC2("invalid IRQ index: [%d]\n", irq_idx);
		return -EINVAL;
	}

	FUNC3(&intr->irq_lock, irq_flags);
	FUNC1(intr, irq_idx);
	FUNC4(&intr->irq_lock, irq_flags);

	return 0;
}