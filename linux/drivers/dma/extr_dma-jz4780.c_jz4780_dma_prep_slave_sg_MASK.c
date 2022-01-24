#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct jz4780_dma_dev {TYPE_2__* soc_data; } ;
struct jz4780_dma_desc {int /*<<< orphan*/  vdesc; TYPE_3__* desc; } ;
struct jz4780_dma_chan {int /*<<< orphan*/  vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
struct TYPE_6__ {unsigned int dtc; int /*<<< orphan*/  dcm; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  JZ_DMA_DCM_LINK ; 
 int /*<<< orphan*/  JZ_DMA_DCM_TIE ; 
 int JZ_SOC_DATA_BREAK_LINKS ; 
 struct jz4780_dma_dev* FUNC0 (struct jz4780_dma_chan*) ; 
 struct jz4780_dma_desc* FUNC1 (struct jz4780_dma_chan*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct jz4780_dma_chan*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 
 struct jz4780_dma_chan* FUNC6 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC8(
	struct dma_chan *chan, struct scatterlist *sgl, unsigned int sg_len,
	enum dma_transfer_direction direction, unsigned long flags,
	void *context)
{
	struct jz4780_dma_chan *jzchan = FUNC6(chan);
	struct jz4780_dma_dev *jzdma = FUNC0(jzchan);
	struct jz4780_dma_desc *desc;
	unsigned int i;
	int err;

	desc = FUNC1(jzchan, sg_len, DMA_SLAVE);
	if (!desc)
		return NULL;

	for (i = 0; i < sg_len; i++) {
		err = FUNC3(jzchan, &desc->desc[i],
					      FUNC4(&sgl[i]),
					      FUNC5(&sgl[i]),
					      direction);
		if (err < 0) {
			FUNC2(&jzchan->desc->vdesc);
			return NULL;
		}

		desc->desc[i].dcm |= JZ_DMA_DCM_TIE;

		if (i != (sg_len - 1) &&
		    !(jzdma->soc_data->flags & JZ_SOC_DATA_BREAK_LINKS)) {
			/* Automatically proceeed to the next descriptor. */
			desc->desc[i].dcm |= JZ_DMA_DCM_LINK;

			/*
			 * The upper 8 bits of the DTC field in the descriptor
			 * must be set to (offset from descriptor base of next
			 * descriptor >> 4).
			 */
			desc->desc[i].dtc |=
				(((i + 1) * sizeof(*desc->desc)) >> 4) << 24;
		}
	}

	return FUNC7(&jzchan->vchan, &desc->vdesc, flags);
}