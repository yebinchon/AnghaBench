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
typedef  unsigned char u32 ;
struct xor_cb {unsigned char sg1u; unsigned char sg2u; unsigned char sg3u; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_cdb {unsigned char sg1u; unsigned char sg2u; unsigned char sg3u; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_CDB_SG_DST1 133 
#define  DMA_CDB_SG_DST2 132 
#define  DMA_CDB_SG_SRC 131 
#define  PPC440SPE_DMA0_ID 130 
#define  PPC440SPE_DMA1_ID 129 
#define  PPC440SPE_XOR_ID 128 
 unsigned char FUNC1 (unsigned char) ; 

__attribute__((used)) static void FUNC2(struct ppc440spe_adma_desc_slot *desc,
			struct ppc440spe_adma_chan *chan, u32 mult_index,
			int sg_index, unsigned char mult_value)
{
	struct dma_cdb *dma_hw_desc;
	struct xor_cb *xor_hw_desc;
	u32 *psgu;

	switch (chan->device->id) {
	case PPC440SPE_DMA0_ID:
	case PPC440SPE_DMA1_ID:
		dma_hw_desc = desc->hw_desc;

		switch (sg_index) {
		/* for RXOR operations set multiplier
		 * into source cued address
		 */
		case DMA_CDB_SG_SRC:
			psgu = &dma_hw_desc->sg1u;
			break;
		/* for WXOR operations set multiplier
		 * into destination cued address(es)
		 */
		case DMA_CDB_SG_DST1:
			psgu = &dma_hw_desc->sg2u;
			break;
		case DMA_CDB_SG_DST2:
			psgu = &dma_hw_desc->sg3u;
			break;
		default:
			FUNC0();
		}

		*psgu |= FUNC1(mult_value << mult_index);
		break;
	case PPC440SPE_XOR_ID:
		xor_hw_desc = desc->hw_desc;
		break;
	default:
		FUNC0();
	}
}