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
typedef  int u32 ;
struct TYPE_4__ {int dma_sm0ar; int dma_sm1ar; } ;
struct stm32_dma_sg_req {TYPE_2__ chan_reg; } ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {int id; size_t next_sg; TYPE_1__* desc; } ;
struct TYPE_3__ {size_t num_sgs; struct stm32_dma_sg_req* sg_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STM32_DMA_SCR_CT ; 
 int STM32_DMA_SCR_DBM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct stm32_dma_device* FUNC5 (struct stm32_dma_chan*) ; 
 int FUNC6 (struct stm32_dma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_dma_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct stm32_dma_chan *chan)
{
	struct stm32_dma_device *dmadev = FUNC5(chan);
	struct stm32_dma_sg_req *sg_req;
	u32 dma_scr, dma_sm0ar, dma_sm1ar, id;

	id = chan->id;
	dma_scr = FUNC6(dmadev, FUNC0(id));

	if (dma_scr & STM32_DMA_SCR_DBM) {
		if (chan->next_sg == chan->desc->num_sgs)
			chan->next_sg = 0;

		sg_req = &chan->desc->sg_req[chan->next_sg];

		if (dma_scr & STM32_DMA_SCR_CT) {
			dma_sm0ar = sg_req->chan_reg.dma_sm0ar;
			FUNC7(dmadev, FUNC1(id), dma_sm0ar);
			FUNC4(FUNC3(chan), "CT=1 <=> SM0AR: 0x%08x\n",
				FUNC6(dmadev, FUNC1(id)));
		} else {
			dma_sm1ar = sg_req->chan_reg.dma_sm1ar;
			FUNC7(dmadev, FUNC2(id), dma_sm1ar);
			FUNC4(FUNC3(chan), "CT=0 <=> SM1AR: 0x%08x\n",
				FUNC6(dmadev, FUNC2(id)));
		}
	}
}