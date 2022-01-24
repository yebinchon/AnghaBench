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
typedef  int u32 ;
struct pch_dma_chan {scalar_t__ dir; } ;
struct pch_dma {int dummy; } ;
struct dma_chan {int chan_id; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL0 ; 
 int /*<<< orphan*/  CTL3 ; 
 int DMA_CTL0_BITS_PER_CH ; 
 int DMA_CTL0_DIR_SHIFT_BITS ; 
 int DMA_CTL0_MODE_MASK_BITS ; 
 int DMA_MASK_CTL0_MODE ; 
 int DMA_MASK_CTL2_MODE ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct pch_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_dma*,int /*<<< orphan*/ ,int) ; 
 struct pch_dma* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pch_dma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct pch_dma_chan *pd_chan = FUNC5(chan);
	struct pch_dma *pd = FUNC4(chan->device);
	u32 val;
	u32 mask_mode;
	u32 mask_ctl;

	if (chan->chan_id < 8) {
		val = FUNC2(pd, CTL0);

		mask_mode = DMA_CTL0_MODE_MASK_BITS <<
					(DMA_CTL0_BITS_PER_CH * chan->chan_id);
		mask_ctl = DMA_MASK_CTL0_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
				       (DMA_CTL0_BITS_PER_CH * chan->chan_id));
		val &= mask_mode;
		if (pd_chan->dir == DMA_MEM_TO_DEV)
			val |= 0x1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id +
				       DMA_CTL0_DIR_SHIFT_BITS);
		else
			val &= ~(0x1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id +
					 DMA_CTL0_DIR_SHIFT_BITS));

		val |= mask_ctl;
		FUNC3(pd, CTL0, val);
	} else {
		int ch = chan->chan_id - 8; /* ch8-->0 ch9-->1 ... ch11->3 */
		val = FUNC2(pd, CTL3);

		mask_mode = DMA_CTL0_MODE_MASK_BITS <<
						(DMA_CTL0_BITS_PER_CH * ch);
		mask_ctl = DMA_MASK_CTL2_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
						 (DMA_CTL0_BITS_PER_CH * ch));
		val &= mask_mode;
		if (pd_chan->dir == DMA_MEM_TO_DEV)
			val |= 0x1 << (DMA_CTL0_BITS_PER_CH * ch +
				       DMA_CTL0_DIR_SHIFT_BITS);
		else
			val &= ~(0x1 << (DMA_CTL0_BITS_PER_CH * ch +
					 DMA_CTL0_DIR_SHIFT_BITS));
		val |= mask_ctl;
		FUNC3(pd, CTL3, val);
	}

	FUNC1(FUNC0(chan), "pdc_set_dir: chan %d -> %x\n",
		chan->chan_id, val);
}