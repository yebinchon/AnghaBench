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
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct pch_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_dma*,int /*<<< orphan*/ ,int) ; 
 struct pch_dma* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan, u32 mode)
{
	struct pch_dma *pd = FUNC4(chan->device);
	u32 val;
	u32 mask_ctl;
	u32 mask_dir;

	if (chan->chan_id < 8) {
		mask_ctl = DMA_MASK_CTL0_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
			   (DMA_CTL0_BITS_PER_CH * chan->chan_id));
		mask_dir = 1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id +\
				 DMA_CTL0_DIR_SHIFT_BITS);
		val = FUNC2(pd, CTL0);
		val &= mask_dir;
		val |= mode << (DMA_CTL0_BITS_PER_CH * chan->chan_id);
		val |= mask_ctl;
		FUNC3(pd, CTL0, val);
	} else {
		int ch = chan->chan_id - 8; /* ch8-->0 ch9-->1 ... ch11->3 */
		mask_ctl = DMA_MASK_CTL2_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
						 (DMA_CTL0_BITS_PER_CH * ch));
		mask_dir = 1 << (DMA_CTL0_BITS_PER_CH * ch +\
				 DMA_CTL0_DIR_SHIFT_BITS);
		val = FUNC2(pd, CTL3);
		val &= mask_dir;
		val |= mode << (DMA_CTL0_BITS_PER_CH * ch);
		val |= mask_ctl;
		FUNC3(pd, CTL3, val);
	}

	FUNC1(FUNC0(chan), "pdc_set_mode: chan %d -> %x\n",
		chan->chan_id, val);
}