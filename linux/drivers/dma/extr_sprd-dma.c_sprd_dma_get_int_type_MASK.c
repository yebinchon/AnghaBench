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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct sprd_dma_dev {TYPE_2__ dma_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  chan; } ;
struct sprd_dma_chn {scalar_t__ chn_base; TYPE_1__ vc; } ;
typedef  enum sprd_dma_int_type { ____Placeholder_sprd_dma_int_type } sprd_dma_int_type ;

/* Variables and functions */
 int SPRD_DMA_BLK_INT ; 
#define  SPRD_DMA_BLK_INT_STS 132 
 int SPRD_DMA_CFGERR_INT ; 
#define  SPRD_DMA_CFGERR_INT_STS 131 
 scalar_t__ SPRD_DMA_CHN_INTC ; 
 int SPRD_DMA_CHN_INT_STS ; 
 int SPRD_DMA_FRAG_INT ; 
#define  SPRD_DMA_FRAG_INT_STS 130 
 int SPRD_DMA_LIST_INT ; 
#define  SPRD_DMA_LIST_INT_STS 129 
 int SPRD_DMA_NO_INT ; 
 int SPRD_DMA_TRANS_INT ; 
#define  SPRD_DMA_TRSC_INT_STS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 struct sprd_dma_dev* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum sprd_dma_int_type FUNC3(struct sprd_dma_chn *schan)
{
	struct sprd_dma_dev *sdev = FUNC2(&schan->vc.chan);
	u32 intc_sts = FUNC1(schan->chn_base + SPRD_DMA_CHN_INTC) &
		       SPRD_DMA_CHN_INT_STS;

	switch (intc_sts) {
	case SPRD_DMA_CFGERR_INT_STS:
		return SPRD_DMA_CFGERR_INT;

	case SPRD_DMA_LIST_INT_STS:
		return SPRD_DMA_LIST_INT;

	case SPRD_DMA_TRSC_INT_STS:
		return SPRD_DMA_TRANS_INT;

	case SPRD_DMA_BLK_INT_STS:
		return SPRD_DMA_BLK_INT;

	case SPRD_DMA_FRAG_INT_STS:
		return SPRD_DMA_FRAG_INT;

	default:
		FUNC0(sdev->dma_dev.dev, "incorrect dma interrupt type\n");
		return SPRD_DMA_NO_INT;
	}
}