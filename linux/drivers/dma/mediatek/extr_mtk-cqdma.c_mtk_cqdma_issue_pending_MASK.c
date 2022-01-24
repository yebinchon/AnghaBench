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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct mtk_cqdma_vchan {TYPE_1__* pc; TYPE_2__ vc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_cqdma_vchan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_cqdma_vchan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *c)
{
	struct mtk_cqdma_vchan *cvc = FUNC3(c);
	unsigned long pc_flags;
	unsigned long vc_flags;

	/* acquire PC's lock before VS's lock for lock dependency in tasklet */
	FUNC1(&cvc->pc->lock, pc_flags);
	FUNC1(&cvc->vc.lock, vc_flags);

	if (FUNC4(&cvc->vc))
		FUNC0(cvc);

	FUNC2(&cvc->vc.lock, vc_flags);
	FUNC2(&cvc->pc->lock, pc_flags);
}