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
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct ppc440spe_adma_desc_slot {int dst_cnt; int descs_per_op; struct ppc440spe_adma_desc_slot* group_head; int /*<<< orphan*/  flags; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {TYPE_2__* device; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int DMA_CUED_REGION_OFF ; 
 int DMA_CUED_XOR_BASE ; 
 int DMA_CUED_XOR_HB ; 
 int DMA_RXOR12 ; 
 int DMA_RXOR123 ; 
 int DMA_RXOR124 ; 
 int DMA_RXOR125 ; 
 int /*<<< orphan*/  PPC440SPE_DESC_RXOR ; 
 int /*<<< orphan*/  PPC440SPE_DESC_RXOR12 ; 
 int /*<<< orphan*/  PPC440SPE_DESC_RXOR123 ; 
 int /*<<< orphan*/  PPC440SPE_DESC_RXOR124 ; 
 int /*<<< orphan*/  PPC440SPE_DESC_RXOR125 ; 
#define  PPC440SPE_DMA0_ID 130 
#define  PPC440SPE_DMA1_ID 129 
#define  PPC440SPE_XOR_ID 128 
 int /*<<< orphan*/  PPC440SPE_ZERO_P ; 
 int /*<<< orphan*/  PPC440SPE_ZERO_Q ; 
 int /*<<< orphan*/  FUNC1 (struct ppc440spe_adma_desc_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppc440spe_adma_desc_slot*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int /*<<< orphan*/ ,int,int) ; 
 struct ppc440spe_adma_desc_slot* FUNC4 (struct ppc440spe_adma_desc_slot*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ppc440spe_adma_chan* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ppc440spe_adma_desc_slot *sw_desc,
		dma_addr_t addr, int index)
{
	struct ppc440spe_adma_chan *chan;
	dma_addr_t haddr = 0;
	struct ppc440spe_adma_desc_slot *iter = NULL;

	chan = FUNC6(sw_desc->async_tx.chan);

	switch (chan->device->id) {
	case PPC440SPE_DMA0_ID:
	case PPC440SPE_DMA1_ID:
		/* DMA0,1 may do: WXOR, RXOR, RXOR+WXORs chain
		 */
		if (FUNC5(PPC440SPE_DESC_RXOR, &sw_desc->flags)) {
			/* RXOR-only or RXOR/WXOR operation */
			int iskip = FUNC5(PPC440SPE_DESC_RXOR12,
				&sw_desc->flags) ?  2 : 3;

			if (index == 0) {
				/* 1st slot (RXOR) */
				/* setup sources region (R1-2-3, R1-2-4,
				 * or R1-2-5)
				 */
				if (FUNC5(PPC440SPE_DESC_RXOR12,
						&sw_desc->flags))
					haddr = DMA_RXOR12 <<
						DMA_CUED_REGION_OFF;
				else if (FUNC5(PPC440SPE_DESC_RXOR123,
				    &sw_desc->flags))
					haddr = DMA_RXOR123 <<
						DMA_CUED_REGION_OFF;
				else if (FUNC5(PPC440SPE_DESC_RXOR124,
				    &sw_desc->flags))
					haddr = DMA_RXOR124 <<
						DMA_CUED_REGION_OFF;
				else if (FUNC5(PPC440SPE_DESC_RXOR125,
				    &sw_desc->flags))
					haddr = DMA_RXOR125 <<
						DMA_CUED_REGION_OFF;
				else
					FUNC0();
				haddr |= DMA_CUED_XOR_BASE;
				iter = FUNC4(sw_desc, 0);
			} else if (index < iskip) {
				/* 1st slot (RXOR)
				 * shall actually set source address only once
				 * instead of first <iskip>
				 */
				iter = NULL;
			} else {
				/* 2nd/3d and next slots (WXOR);
				 * skip first slot with RXOR
				 */
				haddr = DMA_CUED_XOR_HB;
				iter = FUNC4(sw_desc,
				    index - iskip + sw_desc->dst_cnt);
			}
		} else {
			int znum = 0;

			/* WXOR-only operation; skip first slots with
			 * zeroing destinations
			 */
			if (FUNC5(PPC440SPE_ZERO_P, &sw_desc->flags))
				znum++;
			if (FUNC5(PPC440SPE_ZERO_Q, &sw_desc->flags))
				znum++;

			haddr = DMA_CUED_XOR_HB;
			iter = FUNC4(sw_desc,
					index + znum);
		}

		if (FUNC1(iter)) {
			FUNC3(iter, chan, 0, haddr, addr);

			if (!index &&
			    FUNC5(PPC440SPE_DESC_RXOR, &sw_desc->flags) &&
			    sw_desc->dst_cnt == 2) {
				/* if we have two destinations for RXOR, then
				 * setup source in the second descr too
				 */
				iter = FUNC4(sw_desc, 1);
				FUNC3(iter, chan, 0,
					haddr, addr);
			}
		}
		break;

	case PPC440SPE_XOR_ID:
		/* DMA2 may do Biskup */
		iter = sw_desc->group_head;
		if (iter->dst_cnt == 2) {
			/* both P & Q calculations required; set P src here */
			FUNC2(iter, index, addr);

			/* this is for Q */
			iter = FUNC4(sw_desc,
				sw_desc->descs_per_op);
		}
		FUNC2(iter, index, addr);
		break;
	}
}