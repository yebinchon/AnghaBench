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
typedef  int /*<<< orphan*/  u32 ;
struct rot_context {int /*<<< orphan*/  dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum rot_irq_status { ____Placeholder_rot_irq_status } rot_irq_status ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int ROT_IRQ_STATUS_COMPLETE ; 
 int /*<<< orphan*/  ROT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_drm_ipp_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rot_context*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct rot_context *rot = arg;
	enum rot_irq_status irq_status;
	u32 val;

	/* Get execution result */
	irq_status = FUNC6(rot);

	/* clear status */
	val = FUNC4(ROT_STATUS);
	val |= FUNC0((u32)irq_status);
	FUNC5(val, ROT_STATUS);

	if (rot->task) {
		struct exynos_drm_ipp_task *task = rot->task;

		rot->task = NULL;
		FUNC2(rot->dev);
		FUNC3(rot->dev);
		FUNC1(task,
			irq_status == ROT_IRQ_STATUS_COMPLETE ? 0 : -EINVAL);
	}

	return IRQ_HANDLED;
}