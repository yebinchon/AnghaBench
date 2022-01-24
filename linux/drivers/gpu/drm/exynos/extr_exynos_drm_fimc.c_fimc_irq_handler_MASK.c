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
struct fimc_context {int id; int /*<<< orphan*/  dev; struct exynos_drm_ipp_task* task; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct exynos_drm_ipp_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_context*) ; 
 scalar_t__ FUNC3 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_context*,int,int) ; 
 int FUNC6 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct fimc_context *ctx = dev_id;
	int buf_id;

	FUNC0(ctx->dev, "fimc id[%d]\n", ctx->id);

	FUNC4(ctx);
	if (FUNC3(ctx))
		return IRQ_NONE;

	if (!FUNC2(ctx))
		return IRQ_NONE;

	buf_id = FUNC6(ctx);
	if (buf_id < 0)
		return IRQ_HANDLED;

	FUNC0(ctx->dev, "buf_id[%d]\n", buf_id);

	if (ctx->task) {
		struct exynos_drm_ipp_task *task = ctx->task;

		ctx->task = NULL;
		FUNC8(ctx->dev);
		FUNC9(ctx->dev);
		FUNC1(task, 0);
	}

	FUNC5(ctx, buf_id, false);
	FUNC7(ctx);

	return IRQ_HANDLED;
}