#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct TYPE_11__ {int phys; } ;
struct TYPE_12__ {TYPE_5__ tx; } ;
struct TYPE_10__ {void* ctl_lo; void* ctl_hi; void* block_ts_lo; } ;
struct axi_dma_desc {TYPE_6__ vd; int /*<<< orphan*/  xfer_list; TYPE_4__ lli; } ;
struct axi_dma_chan {size_t id; int /*<<< orphan*/  vc; TYPE_3__* chip; } ;
typedef  size_t dma_addr_t ;
struct TYPE_9__ {TYPE_2__* dw; } ;
struct TYPE_8__ {TYPE_1__* hdata; } ;
struct TYPE_7__ {size_t* block_size; size_t axi_rw_burst_len; scalar_t__ restrict_axi_burst_len; } ;

/* Variables and functions */
 size_t CH_CTL_H_ARLEN_EN ; 
 size_t CH_CTL_H_ARLEN_POS ; 
 size_t CH_CTL_H_AWLEN_EN ; 
 size_t CH_CTL_H_AWLEN_POS ; 
 size_t CH_CTL_H_LLI_VALID ; 
 size_t CH_CTL_L_DST_INC_POS ; 
 size_t CH_CTL_L_DST_MSIZE_POS ; 
 size_t CH_CTL_L_DST_WIDTH_POS ; 
 size_t CH_CTL_L_SRC_INC_POS ; 
 size_t CH_CTL_L_SRC_MSIZE_POS ; 
 size_t CH_CTL_L_SRC_WIDTH_POS ; 
 size_t DWAXIDMAC_BURST_TRANS_LEN_4 ; 
 size_t DWAXIDMAC_CH_CTL_L_INC ; 
 size_t FUNC0 (struct axi_dma_chan*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chan*) ; 
 struct axi_dma_desc* FUNC2 (struct axi_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct axi_dma_chan*) ; 
 void* FUNC5 (size_t) ; 
 struct axi_dma_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t*,size_t*,size_t,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct axi_dma_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct axi_dma_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct axi_dma_desc*) ; 
 scalar_t__ FUNC12 (int) ; 
 struct dma_async_tx_descriptor* FUNC13 (int /*<<< orphan*/ *,TYPE_6__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct axi_dma_desc*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct axi_dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct axi_dma_desc*,size_t) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC17(struct dma_chan *dchan, dma_addr_t dst_adr,
			 dma_addr_t src_adr, size_t len, unsigned long flags)
{
	struct axi_dma_desc *first = NULL, *desc = NULL, *prev = NULL;
	struct axi_dma_chan *chan = FUNC6(dchan);
	size_t block_ts, max_block_ts, xfer_len;
	u32 xfer_width, reg;
	u8 lms = 0; /* Select AXI0 master for LLI fetching */

	FUNC7(FUNC4(chan), "%s: memcpy: src: %pad dst: %pad length: %zd flags: %#lx",
		FUNC1(chan), &src_adr, &dst_adr, len, flags);

	max_block_ts = chan->chip->dw->hdata->block_size[chan->id];

	while (len) {
		xfer_len = len;

		/*
		 * Take care for the alignment.
		 * Actually source and destination widths can be different, but
		 * make them same to be simpler.
		 */
		xfer_width = FUNC0(chan, src_adr, dst_adr, xfer_len);

		/*
		 * block_ts indicates the total number of data of width
		 * to be transferred in a DMA block transfer.
		 * BLOCK_TS register should be set to block_ts - 1
		 */
		block_ts = xfer_len >> xfer_width;
		if (block_ts > max_block_ts) {
			block_ts = max_block_ts;
			xfer_len = max_block_ts << xfer_width;
		}

		desc = FUNC2(chan);
		if (FUNC12(!desc))
			goto err_desc_get;

		FUNC16(desc, src_adr);
		FUNC14(desc, dst_adr);
		desc->lli.block_ts_lo = FUNC5(block_ts - 1);

		reg = CH_CTL_H_LLI_VALID;
		if (chan->chip->dw->hdata->restrict_axi_burst_len) {
			u32 burst_len = chan->chip->dw->hdata->axi_rw_burst_len;

			reg |= (CH_CTL_H_ARLEN_EN |
				burst_len << CH_CTL_H_ARLEN_POS |
				CH_CTL_H_AWLEN_EN |
				burst_len << CH_CTL_H_AWLEN_POS);
		}
		desc->lli.ctl_hi = FUNC5(reg);

		reg = (DWAXIDMAC_BURST_TRANS_LEN_4 << CH_CTL_L_DST_MSIZE_POS |
		       DWAXIDMAC_BURST_TRANS_LEN_4 << CH_CTL_L_SRC_MSIZE_POS |
		       xfer_width << CH_CTL_L_DST_WIDTH_POS |
		       xfer_width << CH_CTL_L_SRC_WIDTH_POS |
		       DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_DST_INC_POS |
		       DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_SRC_INC_POS);
		desc->lli.ctl_lo = FUNC5(reg);

		FUNC11(desc);
		FUNC9(desc);

		/* Manage transfer list (xfer_list) */
		if (!first) {
			first = desc;
		} else {
			FUNC8(&desc->xfer_list, &first->xfer_list);
			FUNC15(prev, desc->vd.tx.phys | lms);
		}
		prev = desc;

		/* update the length and addresses for the next loop cycle */
		len -= xfer_len;
		dst_adr += xfer_len;
		src_adr += xfer_len;
	}

	/* Total len of src/dest sg == 0, so no descriptor were allocated */
	if (FUNC12(!first))
		return NULL;

	/* Set end-of-link to the last link descriptor of list */
	FUNC10(desc);

	return FUNC13(&chan->vc, &first->vd, flags);

err_desc_get:
	if (first)
		FUNC3(first);
	return NULL;
}