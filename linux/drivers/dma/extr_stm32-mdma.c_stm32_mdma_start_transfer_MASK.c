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
typedef  scalar_t__ u32 ;
struct virt_dma_desc {int dummy; } ;
struct stm32_mdma_hwdesc {int ctcr; int cbndtr; int csar; int cdar; int cbrur; int clar; int ctbr; int cmar; int cmdr; } ;
struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_chan {int busy; int /*<<< orphan*/  vchan; TYPE_2__* desc; scalar_t__ curr_hwdesc; scalar_t__ id; } ;
struct TYPE_4__ {int ccr; TYPE_1__* node; } ;
struct TYPE_3__ {struct stm32_mdma_hwdesc* hwdesc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ STM32_MDMA_CCR_EN ; 
 scalar_t__ STM32_MDMA_CCR_SWRQ ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int STM32_MDMA_CTCR_SWRM ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct stm32_mdma_chan*) ; 
 struct stm32_mdma_device* FUNC15 (struct stm32_mdma_chan*) ; 
 scalar_t__ FUNC16 (struct stm32_mdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct stm32_mdma_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct stm32_mdma_device*,scalar_t__,int) ; 
 TYPE_2__* FUNC19 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct stm32_mdma_chan *chan)
{
	struct stm32_mdma_device *dmadev = FUNC15(chan);
	struct virt_dma_desc *vdesc;
	struct stm32_mdma_hwdesc *hwdesc;
	u32 id = chan->id;
	u32 status, reg;

	vdesc = FUNC20(&chan->vchan);
	if (!vdesc) {
		chan->desc = NULL;
		return;
	}

	chan->desc = FUNC19(vdesc);
	hwdesc = chan->desc->node[0].hwdesc;
	chan->curr_hwdesc = 0;

	FUNC18(dmadev, FUNC2(id), chan->desc->ccr);
	FUNC18(dmadev, FUNC11(id), hwdesc->ctcr);
	FUNC18(dmadev, FUNC0(id), hwdesc->cbndtr);
	FUNC18(dmadev, FUNC9(id), hwdesc->csar);
	FUNC18(dmadev, FUNC3(id), hwdesc->cdar);
	FUNC18(dmadev, FUNC1(id), hwdesc->cbrur);
	FUNC18(dmadev, FUNC6(id), hwdesc->clar);
	FUNC18(dmadev, FUNC10(id), hwdesc->ctbr);
	FUNC18(dmadev, FUNC7(id), hwdesc->cmar);
	FUNC18(dmadev, FUNC8(id), hwdesc->cmdr);

	/* Clear interrupt status if it is there */
	status = FUNC16(dmadev, FUNC5(id));
	if (status)
		FUNC17(dmadev, FUNC4(id), status);

	FUNC14(chan);

	/* Start DMA */
	FUNC17(dmadev, FUNC2(id), STM32_MDMA_CCR_EN);

	/* Set SW request in case of MEM2MEM transfer */
	if (hwdesc->ctcr & STM32_MDMA_CTCR_SWRM) {
		reg = FUNC2(id);
		FUNC17(dmadev, reg, STM32_MDMA_CCR_SWRQ);
	}

	chan->busy = true;

	FUNC13(FUNC12(chan), "vchan %pK: started\n", &chan->vchan);
}