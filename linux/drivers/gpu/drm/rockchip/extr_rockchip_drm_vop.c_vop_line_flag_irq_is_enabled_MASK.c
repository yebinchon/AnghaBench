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
typedef  int /*<<< orphan*/  uint32_t ;
struct vop {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_FLAG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct vop *vop)
{
	uint32_t line_flag_irq;
	unsigned long flags;

	FUNC1(&vop->irq_lock, flags);

	line_flag_irq = FUNC0(vop, enable, LINE_FLAG_INTR);

	FUNC2(&vop->irq_lock, flags);

	return !!line_flag_irq;
}