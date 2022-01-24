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
typedef  int uint32_t ;
struct dcp_dma_desc {int dummy; } ;
struct dcp_async_ctx {int chan; } ;
struct dcp {int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/ * completion; TYPE_1__* coh; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {struct dcp_dma_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const) ; 
 scalar_t__ MXS_DCP_STAT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dcp_dma_desc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct dcp* global_sdcp ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct dcp_async_ctx *actx)
{
	struct dcp *sdcp = global_sdcp;
	const int chan = actx->chan;
	uint32_t stat;
	unsigned long ret;
	struct dcp_dma_desc *desc = &sdcp->coh->desc[actx->chan];

	dma_addr_t desc_phys = FUNC5(sdcp->dev, desc, sizeof(*desc),
					      DMA_TO_DEVICE);

	FUNC9(&sdcp->completion[chan]);

	/* Clear status register. */
	FUNC11(0xffffffff, sdcp->base + FUNC3(chan));

	/* Load the DMA descriptor. */
	FUNC11(desc_phys, sdcp->base + FUNC0(chan));

	/* Increment the semaphore to start the DMA transfer. */
	FUNC11(1, sdcp->base + FUNC1(chan));

	ret = FUNC10(&sdcp->completion[chan],
					  FUNC7(1000));
	if (!ret) {
		FUNC4(sdcp->dev, "Channel %i timeout (DCP_STAT=0x%08x)\n",
			chan, FUNC8(sdcp->base + MXS_DCP_STAT));
		return -ETIMEDOUT;
	}

	stat = FUNC8(sdcp->base + FUNC2(chan));
	if (stat & 0xff) {
		FUNC4(sdcp->dev, "Channel %i error (CH_STAT=0x%08x)\n",
			chan, stat);
		return -EINVAL;
	}

	FUNC6(sdcp->dev, desc_phys, sizeof(*desc), DMA_TO_DEVICE);

	return 0;
}