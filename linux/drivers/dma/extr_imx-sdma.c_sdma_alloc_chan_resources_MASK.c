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
struct sdma_channel {TYPE_1__* sdma; scalar_t__ event_id1; scalar_t__ event_id0; int /*<<< orphan*/  peripheral_type; } ;
struct imx_dma_data {int priority; scalar_t__ dma_request2; scalar_t__ dma_request; int /*<<< orphan*/  peripheral_type; } ;
struct dma_chan {struct imx_dma_data* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DMA_PRIO_HIGH 130 
#define  DMA_PRIO_LOW 129 
#define  DMA_PRIO_MEDIUM 128 
 int /*<<< orphan*/  IMX_DMATYPE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_channel*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sdma_channel*,int) ; 
 struct sdma_channel* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	struct sdma_channel *sdmac = FUNC5(chan);
	struct imx_dma_data *data = chan->private;
	struct imx_dma_data mem_data;
	int prio, ret;

	/*
	 * MEMCPY may never setup chan->private by filter function such as
	 * dmatest, thus create 'struct imx_dma_data mem_data' for this case.
	 * Please note in any other slave case, you have to setup chan->private
	 * with 'struct imx_dma_data' in your own filter function if you want to
	 * request dma channel by dma_request_channel() rather than
	 * dma_request_slave_channel(). Othwise, 'MEMCPY in case?' will appear
	 * to warn you to correct your filter function.
	 */
	if (!data) {
		FUNC2(sdmac->sdma->dev, "MEMCPY in case?\n");
		mem_data.priority = 2;
		mem_data.peripheral_type = IMX_DMATYPE_MEMORY;
		mem_data.dma_request = 0;
		mem_data.dma_request2 = 0;
		data = &mem_data;

		FUNC3(sdmac, IMX_DMATYPE_MEMORY);
	}

	switch (data->priority) {
	case DMA_PRIO_HIGH:
		prio = 3;
		break;
	case DMA_PRIO_MEDIUM:
		prio = 2;
		break;
	case DMA_PRIO_LOW:
	default:
		prio = 1;
		break;
	}

	sdmac->peripheral_type = data->peripheral_type;
	sdmac->event_id0 = data->dma_request;
	sdmac->event_id1 = data->dma_request2;

	ret = FUNC1(sdmac->sdma->clk_ipg);
	if (ret)
		return ret;
	ret = FUNC1(sdmac->sdma->clk_ahb);
	if (ret)
		goto disable_clk_ipg;

	ret = FUNC4(sdmac, prio);
	if (ret)
		goto disable_clk_ahb;

	return 0;

disable_clk_ahb:
	FUNC0(sdmac->sdma->clk_ahb);
disable_clk_ipg:
	FUNC0(sdmac->sdma->clk_ipg);
	return ret;
}