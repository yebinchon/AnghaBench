#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct stm32_mdma_hwdesc {int ctcr; } ;
struct stm32_mdma_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct stm32_mdma_chan {size_t curr_hwdesc; TYPE_3__ vchan; int /*<<< orphan*/  id; TYPE_2__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ccr; TYPE_1__* node; } ;
struct TYPE_4__ {struct stm32_mdma_hwdesc* hwdesc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STM32_MDMA_CCR_EN ; 
 scalar_t__ STM32_MDMA_CCR_SWRQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CTCR_SWRM ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_device* FUNC8 (struct stm32_mdma_chan*) ; 
 scalar_t__ FUNC9 (struct stm32_mdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_mdma_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct stm32_mdma_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct stm32_mdma_chan* FUNC12 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC13(struct dma_chan *c)
{
	struct stm32_mdma_chan *chan = FUNC12(c);
	struct stm32_mdma_device *dmadev = FUNC8(chan);
	struct stm32_mdma_hwdesc *hwdesc;
	unsigned long flags;
	u32 status, reg;

	hwdesc = chan->desc->node[chan->curr_hwdesc].hwdesc;

	FUNC5(&chan->vchan.lock, flags);

	/* Re-configure control register */
	FUNC11(dmadev, FUNC0(chan->id), chan->desc->ccr);

	/* Clear interrupt status if it is there */
	status = FUNC9(dmadev, FUNC2(chan->id));
	if (status)
		FUNC10(dmadev, FUNC1(chan->id), status);

	FUNC7(chan);

	/* Re-start DMA */
	reg = FUNC0(chan->id);
	FUNC10(dmadev, reg, STM32_MDMA_CCR_EN);

	/* Set SW request in case of MEM2MEM transfer */
	if (hwdesc->ctcr & STM32_MDMA_CTCR_SWRM)
		FUNC10(dmadev, reg, STM32_MDMA_CCR_SWRQ);

	FUNC6(&chan->vchan.lock, flags);

	FUNC4(FUNC3(chan), "vchan %pK: resume\n", &chan->vchan);

	return 0;
}