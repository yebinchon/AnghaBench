#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct mtk_cqdma_device {size_t dma_channels; TYPE_1__** pc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_FLAG ; 
 int MTK_CQDMA_INT_FLAG_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct mtk_cqdma_device *cqdma = devid;
	irqreturn_t ret = IRQ_NONE;
	bool schedule_tasklet = false;
	u32 i;

	/* clear interrupt flags for each PC */
	for (i = 0; i < cqdma->dma_channels; ++i, schedule_tasklet = false) {
		FUNC3(&cqdma->pc[i]->lock);
		if (FUNC2(cqdma->pc[i],
				 MTK_CQDMA_INT_FLAG) & MTK_CQDMA_INT_FLAG_BIT) {
			/* clear interrupt */
			FUNC1(cqdma->pc[i], MTK_CQDMA_INT_FLAG,
				    MTK_CQDMA_INT_FLAG_BIT);

			schedule_tasklet = true;
			ret = IRQ_HANDLED;
		}
		FUNC4(&cqdma->pc[i]->lock);

		if (schedule_tasklet) {
			/* disable interrupt */
			FUNC0(cqdma->pc[i]->irq);

			/* schedule the tasklet to handle the transactions */
			FUNC5(&cqdma->pc[i]->tasklet);
		}
	}

	return ret;
}