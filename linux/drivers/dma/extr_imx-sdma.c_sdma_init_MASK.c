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
struct sdma_engine {int clk_ratio; int context_phys; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/ * channel; scalar_t__ regs; TYPE_1__* drvdata; scalar_t__ channel_control; void* context; } ;
struct sdma_context_data {int dummy; } ;
struct sdma_channel_control {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int num_events; scalar_t__ check_ratio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_DMA_CHANNELS ; 
 scalar_t__ SDMA_CHN0ADDR ; 
 scalar_t__ SDMA_CHNPRI_0 ; 
 scalar_t__ SDMA_H_C0PTR ; 
 scalar_t__ SDMA_H_CONFIG ; 
 int SDMA_H_CONFIG_ACR ; 
 scalar_t__ FUNC0 (struct sdma_engine*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC7 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct sdma_engine *sdma)
{
	int i, ret;
	dma_addr_t ccb_phys;

	ret = FUNC2(sdma->clk_ipg);
	if (ret)
		return ret;
	ret = FUNC2(sdma->clk_ahb);
	if (ret)
		goto disable_clk_ipg;

	if (sdma->drvdata->check_ratio &&
	    (FUNC3(sdma->clk_ahb) == FUNC3(sdma->clk_ipg)))
		sdma->clk_ratio = 1;

	/* Be sure SDMA has not started yet */
	FUNC9(0, sdma->regs + SDMA_H_C0PTR);

	sdma->channel_control = FUNC5(sdma->dev,
			MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control) +
			sizeof(struct sdma_context_data),
			&ccb_phys, GFP_KERNEL);

	if (!sdma->channel_control) {
		ret = -ENOMEM;
		goto err_dma_alloc;
	}

	sdma->context = (void *)sdma->channel_control +
		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
	sdma->context_phys = ccb_phys +
		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);

	/* disable all channels */
	for (i = 0; i < sdma->drvdata->num_events; i++)
		FUNC9(0, sdma->regs + FUNC0(sdma, i));

	/* All channels have priority 0 */
	for (i = 0; i < MAX_DMA_CHANNELS; i++)
		FUNC9(0, sdma->regs + SDMA_CHNPRI_0 + i * 4);

	ret = FUNC7(sdma);
	if (ret)
		goto err_dma_alloc;

	FUNC6(&sdma->channel[0], false, true, false);

	/* Set Command Channel (Channel Zero) */
	FUNC9(0x4050, sdma->regs + SDMA_CHN0ADDR);

	/* Set bits of CONFIG register but with static context switching */
	if (sdma->clk_ratio)
		FUNC9(SDMA_H_CONFIG_ACR, sdma->regs + SDMA_H_CONFIG);
	else
		FUNC9(0, sdma->regs + SDMA_H_CONFIG);

	FUNC9(ccb_phys, sdma->regs + SDMA_H_C0PTR);

	/* Initializes channel's priorities */
	FUNC8(&sdma->channel[0], 7);

	FUNC1(sdma->clk_ipg);
	FUNC1(sdma->clk_ahb);

	return 0;

err_dma_alloc:
	FUNC1(sdma->clk_ahb);
disable_clk_ipg:
	FUNC1(sdma->clk_ipg);
	FUNC4(sdma->dev, "initialisation failed with %d\n", ret);
	return ret;
}