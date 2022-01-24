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
typedef  int u32 ;
struct hsu_dma_desc {unsigned int nents; unsigned int active; TYPE_1__* sg; } ;
struct dma_slave_config {int dst_maxburst; int dst_addr_width; int src_maxburst; int src_addr_width; } ;
struct hsu_dma_chan {scalar_t__ direction; struct hsu_dma_desc* desc; struct dma_slave_config config; } ;
struct TYPE_2__ {int addr; int len; } ;

/* Variables and functions */
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  HSU_CH_BSR ; 
 int /*<<< orphan*/  HSU_CH_DCR ; 
 int FUNC0 (unsigned int) ; 
 int HSU_CH_DCR_CHEI ; 
 int FUNC1 (unsigned int) ; 
 int HSU_CH_DCR_CHSOE ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  HSU_CH_MTSR ; 
 unsigned int HSU_DMA_CHAN_NR_DESC ; 
 int /*<<< orphan*/  FUNC6 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct hsu_dma_chan*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct hsu_dma_chan *hsuc)
{
	struct dma_slave_config *config = &hsuc->config;
	struct hsu_dma_desc *desc = hsuc->desc;
	u32 bsr = 0, mtsr = 0;	/* to shut the compiler up */
	u32 dcr = HSU_CH_DCR_CHSOE | HSU_CH_DCR_CHEI;
	unsigned int i, count;

	if (hsuc->direction == DMA_MEM_TO_DEV) {
		bsr = config->dst_maxburst;
		mtsr = config->dst_addr_width;
	} else if (hsuc->direction == DMA_DEV_TO_MEM) {
		bsr = config->src_maxburst;
		mtsr = config->src_addr_width;
	}

	FUNC6(hsuc);

	FUNC8(hsuc, HSU_CH_DCR, 0);
	FUNC8(hsuc, HSU_CH_BSR, bsr);
	FUNC8(hsuc, HSU_CH_MTSR, mtsr);

	/* Set descriptors */
	count = desc->nents - desc->active;
	for (i = 0; i < count && i < HSU_DMA_CHAN_NR_DESC; i++) {
		FUNC8(hsuc, FUNC4(i), desc->sg[i].addr);
		FUNC8(hsuc, FUNC5(i), desc->sg[i].len);

		/* Prepare value for DCR */
		dcr |= FUNC3(i);
		dcr |= FUNC2(i);	/* timeout bit, see HSU Errata 1 */

		desc->active++;
	}
	/* Only for the last descriptor in the chain */
	dcr |= FUNC1(count - 1);
	dcr |= FUNC0(count - 1);

	FUNC8(hsuc, HSU_CH_DCR, dcr);

	FUNC7(hsuc);
}