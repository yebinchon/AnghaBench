#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  desc_completed; int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_vchan {int issue_synchronize; TYPE_1__ vc; int /*<<< orphan*/  desc_hw_processing; int /*<<< orphan*/  issue_completion; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mtk_hsdma_vchan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *c)
{
	struct mtk_hsdma_vchan *hvc = FUNC4(c);
	bool sync_needed = false;

	/*
	 * Once issue_synchronize is being set, which means once the hardware
	 * consumes all descriptors for the channel in the ring, the
	 * synchronization must be be notified immediately it is completed.
	 */
	FUNC2(&hvc->vc.lock);
	if (!FUNC1(&hvc->desc_hw_processing)) {
		hvc->issue_synchronize = true;
		sync_needed = true;
	}
	FUNC3(&hvc->vc.lock);

	if (sync_needed)
		FUNC6(&hvc->issue_completion);
	/*
	 * At the point, we expect that all remaining descriptors in the ring
	 * for the channel should be all processing done.
	 */
	FUNC0(!FUNC1(&hvc->desc_hw_processing),
		  "Desc pending still in list desc_hw_processing\n");

	/* Free all descriptors in list desc_completed */
	FUNC5(&hvc->vc);

	FUNC0(!FUNC1(&hvc->vc.desc_completed),
		  "Desc pending still in list desc_completed\n");
}