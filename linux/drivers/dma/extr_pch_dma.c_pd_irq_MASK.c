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
typedef  int u32 ;
struct pch_dma_chan {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  err_status; } ;
struct TYPE_2__ {int chancnt; int /*<<< orphan*/  dev; } ;
struct pch_dma {struct pch_dma_chan* channels; TYPE_1__ dma; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  STS0 ; 
 int /*<<< orphan*/  STS2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct pch_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *devid)
{
	struct pch_dma *pd = (struct pch_dma *)devid;
	struct pch_dma_chan *pd_chan;
	u32 sts0;
	u32 sts2;
	int i;
	int ret0 = IRQ_NONE;
	int ret2 = IRQ_NONE;

	sts0 = FUNC4(pd, STS0);
	sts2 = FUNC4(pd, STS2);

	FUNC3(pd->dma.dev, "pd_irq sts0: %x\n", sts0);

	for (i = 0; i < pd->dma.chancnt; i++) {
		pd_chan = &pd->channels[i];

		if (i < 8) {
			if (sts0 & FUNC2(i)) {
				if (sts0 & FUNC0(i))
					FUNC6(0, &pd_chan->err_status);

				FUNC7(&pd_chan->tasklet);
				ret0 = IRQ_HANDLED;
			}
		} else {
			if (sts2 & FUNC2(i - 8)) {
				if (sts2 & FUNC1(i))
					FUNC6(0, &pd_chan->err_status);

				FUNC7(&pd_chan->tasklet);
				ret2 = IRQ_HANDLED;
			}
		}
	}

	/* clear interrupt bits in status register */
	if (ret0)
		FUNC5(pd, STS0, sts0);
	if (ret2)
		FUNC5(pd, STS2, sts2);

	return ret0 | ret2;
}