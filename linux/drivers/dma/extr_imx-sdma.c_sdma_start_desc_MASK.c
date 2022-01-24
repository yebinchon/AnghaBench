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
struct virt_dma_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  tx; } ;
struct sdma_engine {TYPE_1__* channel_control; } ;
struct sdma_desc {int /*<<< orphan*/  bd_phys; } ;
struct sdma_channel {int channel; int flags; struct sdma_desc* desc; struct sdma_engine* sdma; int /*<<< orphan*/  vc; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_bd_ptr; int /*<<< orphan*/  base_bd_ptr; } ;

/* Variables and functions */
 int IMX_DMA_SG_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sdma_engine*,int) ; 
 struct sdma_desc* FUNC2 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sdma_channel *sdmac)
{
	struct virt_dma_desc *vd = FUNC3(&sdmac->vc);
	struct sdma_desc *desc;
	struct sdma_engine *sdma = sdmac->sdma;
	int channel = sdmac->channel;

	if (!vd) {
		sdmac->desc = NULL;
		return;
	}
	sdmac->desc = desc = FUNC2(&vd->tx);
	/*
	 * Do not delete the node in desc_issued list in cyclic mode, otherwise
	 * the desc allocated will never be freed in vchan_dma_desc_free_list
	 */
	if (!(sdmac->flags & IMX_DMA_SG_LOOP))
		FUNC0(&vd->node);

	sdma->channel_control[channel].base_bd_ptr = desc->bd_phys;
	sdma->channel_control[channel].current_bd_ptr = desc->bd_phys;
	FUNC1(sdma, sdmac->channel);
}