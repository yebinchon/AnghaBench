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
struct vop {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_HOLD_VALID_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  enable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct vop *vop)
{
	unsigned long flags;

	if (FUNC1(!vop->is_enabled))
		return;

	FUNC2(&vop->irq_lock, flags);

	FUNC0(vop, enable, DSP_HOLD_VALID_INTR, 0);

	FUNC3(&vop->irq_lock, flags);
}