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
typedef  int u32 ;
struct gsc_context {int /*<<< orphan*/  dev; struct exynos_drm_ipp_task* task; int /*<<< orphan*/  id; } ;
struct exynos_drm_ipp_task {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GSC_IRQ ; 
 int GSC_IRQ_STATUS_OR_FRM_DONE ; 
 int GSC_IRQ_STATUS_OR_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_ipp_task*,int) ; 
 int FUNC4 (struct gsc_context*) ; 
 int FUNC5 (struct gsc_context*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct gsc_context *ctx = dev_id;
	u32 status;
	int err = 0;

	FUNC0(ctx->dev, "gsc id[%d]\n", ctx->id);

	status = FUNC6(GSC_IRQ);
	if (status & GSC_IRQ_STATUS_OR_IRQ) {
		FUNC2(ctx->dev, "occurred overflow at %d, status 0x%x.\n",
			ctx->id, status);
		err = -EINVAL;
	}

	if (status & GSC_IRQ_STATUS_OR_FRM_DONE) {
		int src_buf_id, dst_buf_id;

		FUNC1(ctx->dev, "occurred frame done at %d, status 0x%x.\n",
			ctx->id, status);

		src_buf_id = FUNC5(ctx);
		dst_buf_id = FUNC4(ctx);

		FUNC0(ctx->dev, "buf_id_src[%d]buf_id_dst[%d]\n",
				  src_buf_id, dst_buf_id);

		if (src_buf_id < 0 || dst_buf_id < 0)
			err = -EINVAL;
	}

	if (ctx->task) {
		struct exynos_drm_ipp_task *task = ctx->task;

		ctx->task = NULL;
		FUNC7(ctx->dev);
		FUNC8(ctx->dev);
		FUNC3(task, err);
	}

	return IRQ_HANDLED;
}