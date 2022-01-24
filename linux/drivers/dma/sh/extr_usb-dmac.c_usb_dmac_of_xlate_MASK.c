#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct of_phandle_args {int args_count; } ;
struct of_dma {int /*<<< orphan*/  of_node; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 struct dma_chan* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct of_phandle_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_dmac_chan_filter ; 

__attribute__((used)) static struct dma_chan *FUNC3(struct of_phandle_args *dma_spec,
					  struct of_dma *ofdma)
{
	struct dma_chan *chan;
	dma_cap_mask_t mask;

	if (dma_spec->args_count != 1)
		return NULL;

	/* Only slave DMA channels can be allocated via DT */
	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	chan = FUNC0(&mask, usb_dmac_chan_filter, dma_spec,
				     ofdma->of_node);
	if (!chan)
		return NULL;

	return chan;
}