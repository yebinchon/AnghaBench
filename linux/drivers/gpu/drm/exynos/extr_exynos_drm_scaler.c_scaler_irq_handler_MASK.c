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
struct scaler_context {int /*<<< orphan*/  dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_ipp_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scaler_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct scaler_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *arg)
{
	struct scaler_context *scaler = arg;

	u32 val = FUNC4(scaler);

	FUNC3(scaler);

	if (scaler->task) {
		struct exynos_drm_ipp_task *task = scaler->task;

		scaler->task = NULL;
		FUNC1(scaler->dev);
		FUNC2(scaler->dev);
		FUNC0(task, FUNC5(val));
	}

	return IRQ_HANDLED;
}