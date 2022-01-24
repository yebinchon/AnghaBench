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
typedef  size_t u32 ;
struct mtk_cqdma_device {size_t dma_channels; int /*<<< orphan*/  clk; TYPE_1__** pc; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct mtk_cqdma_device *cqdma)
{
	unsigned long flags;
	u32 i;

	/* reset all PCs */
	for (i = 0; i < cqdma->dma_channels; ++i) {
		FUNC6(&cqdma->pc[i]->lock, flags);
		if (FUNC3(cqdma->pc[i]) < 0)
			FUNC2(FUNC1(cqdma), "cqdma hard reset timeout\n");
		FUNC7(&cqdma->pc[i]->lock, flags);
	}

	FUNC0(cqdma->clk);

	FUNC5(FUNC1(cqdma));
	FUNC4(FUNC1(cqdma));
}