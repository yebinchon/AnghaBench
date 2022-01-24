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
struct fimc_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  EXYNOS_CIFCNTSEQ ; 
 int FIMC_BUF_START ; 
 int FIMC_BUF_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*,int) ; 
 int FUNC2 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct fimc_context *ctx, u32 buf_id,
		bool enqueue)
{
	unsigned long flags;
	u32 buf_num;
	u32 cfg;

	FUNC0(ctx->dev, "buf_id[%d]enqueu[%d]\n", buf_id, enqueue);

	FUNC5(&ctx->lock, flags);

	cfg = FUNC2(ctx, EXYNOS_CIFCNTSEQ);

	if (enqueue)
		cfg |= (1 << buf_id);
	else
		cfg &= ~(1 << buf_id);

	FUNC3(ctx, cfg, EXYNOS_CIFCNTSEQ);

	buf_num = FUNC4(cfg);

	if (enqueue && buf_num >= FIMC_BUF_START)
		FUNC1(ctx, true);
	else if (!enqueue && buf_num <= FIMC_BUF_STOP)
		FUNC1(ctx, false);

	FUNC6(&ctx->lock, flags);
}