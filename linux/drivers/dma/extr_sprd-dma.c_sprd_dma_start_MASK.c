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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct sprd_dma_chn {scalar_t__ chn_mode; scalar_t__ dev_id; int /*<<< orphan*/  cur_desc; int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 scalar_t__ SPRD_DMA_DST_CHN0 ; 
 scalar_t__ SPRD_DMA_DST_CHN1 ; 
 scalar_t__ SPRD_DMA_SOFTWARE_UID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_dma_chn*) ; 
 scalar_t__ FUNC2 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_dma_chn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_dma_chn*) ; 
 int /*<<< orphan*/  FUNC6 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sprd_dma_chn *schan)
{
	struct virt_dma_desc *vd = FUNC7(&schan->vc);

	if (!vd)
		return;

	FUNC0(&vd->node);
	schan->cur_desc = FUNC6(vd);

	/*
	 * Set 2-stage configuration if the channel starts one 2-stage
	 * transfer.
	 */
	if (schan->chn_mode && FUNC2(schan))
		return;

	/*
	 * Copy the DMA configuration from DMA descriptor to this hardware
	 * channel.
	 */
	FUNC3(schan, schan->cur_desc);
	FUNC4(schan);
	FUNC1(schan);

	if (schan->dev_id == SPRD_DMA_SOFTWARE_UID &&
	    schan->chn_mode != SPRD_DMA_DST_CHN0 &&
	    schan->chn_mode != SPRD_DMA_DST_CHN1)
		FUNC5(schan);
}