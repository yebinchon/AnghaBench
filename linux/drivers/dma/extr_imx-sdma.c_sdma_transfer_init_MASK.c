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
typedef  int /*<<< orphan*/  u32 ;
struct sdma_desc {int /*<<< orphan*/  num_bd; struct sdma_channel* sdmac; scalar_t__ buf_ptail; scalar_t__ buf_tail; scalar_t__ chn_real_count; scalar_t__ chn_count; } ;
struct sdma_channel {int direction; scalar_t__ flags; int /*<<< orphan*/  status; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int DMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdma_desc*) ; 
 struct sdma_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_channel*,int,int,int) ; 
 scalar_t__ FUNC4 (struct sdma_channel*) ; 

__attribute__((used)) static struct sdma_desc *FUNC5(struct sdma_channel *sdmac,
				enum dma_transfer_direction direction, u32 bds)
{
	struct sdma_desc *desc;

	desc = FUNC1((sizeof(*desc)), GFP_NOWAIT);
	if (!desc)
		goto err_out;

	sdmac->status = DMA_IN_PROGRESS;
	sdmac->direction = direction;
	sdmac->flags = 0;

	desc->chn_count = 0;
	desc->chn_real_count = 0;
	desc->buf_tail = 0;
	desc->buf_ptail = 0;
	desc->sdmac = sdmac;
	desc->num_bd = bds;

	if (FUNC2(desc))
		goto err_desc_out;

	/* No slave_config called in MEMCPY case, so do here */
	if (direction == DMA_MEM_TO_MEM)
		FUNC3(sdmac, false, true, false);

	if (FUNC4(sdmac))
		goto err_desc_out;

	return desc;

err_desc_out:
	FUNC0(desc);
err_out:
	return NULL;
}