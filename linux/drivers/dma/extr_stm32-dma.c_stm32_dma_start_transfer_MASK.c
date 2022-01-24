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
typedef  scalar_t__ u32 ;
struct virt_dma_desc {int dummy; } ;
struct stm32_dma_chan_reg {int /*<<< orphan*/  dma_scr; int /*<<< orphan*/  dma_sndtr; int /*<<< orphan*/  dma_sm1ar; int /*<<< orphan*/  dma_sfcr; int /*<<< orphan*/  dma_sm0ar; int /*<<< orphan*/  dma_spar; } ;
struct stm32_dma_sg_req {struct stm32_dma_chan_reg chan_reg; } ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {size_t next_sg; int busy; int /*<<< orphan*/  vchan; int /*<<< orphan*/  id; TYPE_1__* desc; } ;
struct TYPE_2__ {size_t num_sgs; scalar_t__ cyclic; struct stm32_dma_sg_req* sg_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STM32_DMA_SCR_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_dma_chan*) ; 
 int FUNC9 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_dma_chan*) ; 
 struct stm32_dma_device* FUNC11 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_dma_chan*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC14 (struct stm32_dma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct stm32_dma_chan *chan)
{
	struct stm32_dma_device *dmadev = FUNC11(chan);
	struct virt_dma_desc *vdesc;
	struct stm32_dma_sg_req *sg_req;
	struct stm32_dma_chan_reg *reg;
	u32 status;
	int ret;

	ret = FUNC9(chan);
	if (ret < 0)
		return;

	if (!chan->desc) {
		vdesc = FUNC16(&chan->vchan);
		if (!vdesc)
			return;

		chan->desc = FUNC15(vdesc);
		chan->next_sg = 0;
	}

	if (chan->next_sg == chan->desc->num_sgs)
		chan->next_sg = 0;

	sg_req = &chan->desc->sg_req[chan->next_sg];
	reg = &sg_req->chan_reg;

	FUNC14(dmadev, FUNC0(chan->id), reg->dma_scr);
	FUNC14(dmadev, FUNC5(chan->id), reg->dma_spar);
	FUNC14(dmadev, FUNC2(chan->id), reg->dma_sm0ar);
	FUNC14(dmadev, FUNC1(chan->id), reg->dma_sfcr);
	FUNC14(dmadev, FUNC3(chan->id), reg->dma_sm1ar);
	FUNC14(dmadev, FUNC4(chan->id), reg->dma_sndtr);

	chan->next_sg++;

	/* Clear interrupt status if it is there */
	status = FUNC13(chan);
	if (status)
		FUNC12(chan, status);

	if (chan->desc->cyclic)
		FUNC8(chan);

	FUNC10(chan);

	/* Start DMA */
	reg->dma_scr |= STM32_DMA_SCR_EN;
	FUNC14(dmadev, FUNC0(chan->id), reg->dma_scr);

	chan->busy = true;

	FUNC7(FUNC6(chan), "vchan %pK: started\n", &chan->vchan);
}