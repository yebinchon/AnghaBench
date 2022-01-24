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
struct nouveau_cli_work {int /*<<< orphan*/  cb; int /*<<< orphan*/  head; struct nouveau_cli* cli; int /*<<< orphan*/  fence; } ;
struct nouveau_cli {int /*<<< orphan*/  lock; int /*<<< orphan*/  worker; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct dma_fence*,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*,int /*<<< orphan*/ *) ; 

void
FUNC6(struct nouveau_cli *cli, struct dma_fence *fence,
		       struct nouveau_cli_work *work)
{
	work->fence = FUNC1(fence);
	work->cli = cli;
	FUNC3(&cli->lock);
	FUNC2(&work->head, &cli->worker);
	if (FUNC0(fence, &work->cb, nouveau_cli_work_fence))
		FUNC5(fence, &work->cb);
	FUNC4(&cli->lock);
}