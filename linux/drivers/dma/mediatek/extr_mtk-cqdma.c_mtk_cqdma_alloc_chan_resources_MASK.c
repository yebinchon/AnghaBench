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
typedef  size_t u32 ;
struct mtk_cqdma_vchan {struct mtk_cqdma_pchan* pc; } ;
struct mtk_cqdma_pchan {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; } ;
struct mtk_cqdma_device {size_t dma_channels; struct mtk_cqdma_pchan** pc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_EN ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_EN_BIT ; 
 size_t U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_cqdma_pchan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_cqdma_pchan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_cqdma_device* FUNC7 (struct dma_chan*) ; 
 struct mtk_cqdma_vchan* FUNC8 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *c)
{
	struct mtk_cqdma_device *cqdma = FUNC7(c);
	struct mtk_cqdma_vchan *vc = FUNC8(c);
	struct mtk_cqdma_pchan *pc = NULL;
	u32 i, min_refcnt = U32_MAX, refcnt;
	unsigned long flags;

	/* allocate PC with the minimun refcount */
	for (i = 0; i < cqdma->dma_channels; ++i) {
		refcnt = FUNC3(&cqdma->pc[i]->refcnt);
		if (refcnt < min_refcnt) {
			pc = cqdma->pc[i];
			min_refcnt = refcnt;
		}
	}

	if (!pc)
		return -ENOSPC;

	FUNC5(&pc->lock, flags);

	if (!FUNC3(&pc->refcnt)) {
		/* allocate PC when the refcount is zero */
		FUNC0(pc);

		/* enable interrupt for this PC */
		FUNC1(pc, MTK_CQDMA_INT_EN, MTK_CQDMA_INT_EN_BIT);

		/*
		 * refcount_inc would complain increment on 0; use-after-free.
		 * Thus, we need to explicitly set it as 1 initially.
		 */
		FUNC4(&pc->refcnt, 1);
	} else {
		FUNC2(&pc->refcnt);
	}

	FUNC6(&pc->lock, flags);

	vc->pc = pc;

	return 0;
}