#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mtk_cqdma_vchan {TYPE_1__* pc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_CQDMA_FLUSH ; 
 int /*<<< orphan*/  MTK_CQDMA_FLUSH_BIT ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_EN ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_EN_BIT ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_FLAG ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_FLAG_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_chan*) ; 
 struct mtk_cqdma_vchan* FUNC10 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *c)
{
	struct mtk_cqdma_vchan *cvc = FUNC10(c);
	unsigned long flags;

	/* free all descriptors in all lists on the VC */
	FUNC3(c);

	FUNC7(&cvc->pc->lock, flags);

	/* PC is not freed until there is no VC mapped to it */
	if (FUNC6(&cvc->pc->refcnt)) {
		/* start the flush operation and stop the engine */
		FUNC5(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);

		/* wait for the completion of flush operation */
		if (FUNC2(cvc->pc, true) < 0)
			FUNC1(FUNC0(FUNC9(c)), "cqdma flush timeout\n");

		/* clear the flush bit and interrupt flag */
		FUNC4(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);
		FUNC4(cvc->pc, MTK_CQDMA_INT_FLAG,
			    MTK_CQDMA_INT_FLAG_BIT);

		/* disable interrupt for this PC */
		FUNC4(cvc->pc, MTK_CQDMA_INT_EN, MTK_CQDMA_INT_EN_BIT);
	}

	FUNC8(&cvc->pc->lock, flags);
}