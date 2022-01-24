#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  desc_completed; int /*<<< orphan*/  lock; } ;
struct mtk_cqdma_vchan {int issue_synchronize; TYPE_2__ vc; int /*<<< orphan*/  issue_completion; TYPE_1__* pc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mtk_cqdma_vchan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_cqdma_vchan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dma_chan *c)
{
	struct mtk_cqdma_vchan *cvc = FUNC5(c);
	bool sync_needed = false;
	unsigned long pc_flags;
	unsigned long vc_flags;

	/* acquire PC's lock first due to lock dependency in dma ISR */
	FUNC3(&cvc->pc->lock, pc_flags);
	FUNC3(&cvc->vc.lock, vc_flags);

	/* synchronization is required if this VC is active */
	if (FUNC2(cvc)) {
		cvc->issue_synchronize = true;
		sync_needed = true;
	}

	FUNC4(&cvc->vc.lock, vc_flags);
	FUNC4(&cvc->pc->lock, pc_flags);

	/* waiting for the completion of this VC */
	if (sync_needed)
		FUNC7(&cvc->issue_completion);

	/* free all descriptors in list desc_completed */
	FUNC6(&cvc->vc);

	FUNC0(!FUNC1(&cvc->vc.desc_completed),
		  "Desc pending still in list desc_completed\n");
}