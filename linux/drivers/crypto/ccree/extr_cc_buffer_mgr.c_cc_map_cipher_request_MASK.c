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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct scatterlist {int dummy; } ;
struct mlli_params {int /*<<< orphan*/ * curr_pool; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iv_dma_addr; } ;
struct cipher_req_ctx {scalar_t__ dma_buf_type; int /*<<< orphan*/  out_mlli_nents; scalar_t__ out_nents; int /*<<< orphan*/  in_mlli_nents; scalar_t__ in_nents; TYPE_1__ gen_ctx; struct mlli_params mlli_params; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buffer_array {scalar_t__ num_of_buffers; } ;
struct buff_mgr_handle {int /*<<< orphan*/ * mlli_buffs_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ CC_DMA_BUF_DLLI ; 
 scalar_t__ CC_DMA_BUF_MLLI ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LLI_MAX_NUM_OF_DATA_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct buffer_array*,scalar_t__,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*,struct buffer_array*,struct mlli_params*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct cipher_req_ctx*,unsigned int,struct scatterlist*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int,void*) ; 
 scalar_t__ FUNC7 (struct device*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device*,scalar_t__) ; 
 struct device* FUNC9 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC11(struct cc_drvdata *drvdata, void *ctx,
			  unsigned int ivsize, unsigned int nbytes,
			  void *info, struct scatterlist *src,
			  struct scatterlist *dst, gfp_t flags)
{
	struct cipher_req_ctx *req_ctx = (struct cipher_req_ctx *)ctx;
	struct mlli_params *mlli_params = &req_ctx->mlli_params;
	struct buff_mgr_handle *buff_mgr = drvdata->buff_mgr_handle;
	struct device *dev = FUNC9(drvdata);
	struct buffer_array sg_data;
	u32 dummy = 0;
	int rc = 0;
	u32 mapped_nents = 0;

	req_ctx->dma_buf_type = CC_DMA_BUF_DLLI;
	mlli_params->curr_pool = NULL;
	sg_data.num_of_buffers = 0;

	/* Map IV buffer */
	if (ivsize) {
		FUNC10("iv", (u8 *)info, ivsize);
		req_ctx->gen_ctx.iv_dma_addr =
			FUNC7(dev, (void *)info,
				       ivsize, DMA_BIDIRECTIONAL);
		if (FUNC8(dev, req_ctx->gen_ctx.iv_dma_addr)) {
			FUNC6(dev, "Mapping iv %u B at va=%pK for DMA failed\n",
				ivsize, info);
			return -ENOMEM;
		}
		FUNC5(dev, "Mapped iv %u B at va=%pK to dma=%pad\n",
			ivsize, info, &req_ctx->gen_ctx.iv_dma_addr);
	} else {
		req_ctx->gen_ctx.iv_dma_addr = 0;
	}

	/* Map the src SGL */
	rc = FUNC3(dev, src, nbytes, DMA_BIDIRECTIONAL, &req_ctx->in_nents,
		       LLI_MAX_NUM_OF_DATA_ENTRIES, &dummy, &mapped_nents);
	if (rc)
		goto cipher_exit;
	if (mapped_nents > 1)
		req_ctx->dma_buf_type = CC_DMA_BUF_MLLI;

	if (src == dst) {
		/* Handle inplace operation */
		if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
			req_ctx->out_nents = 0;
			FUNC0(dev, &sg_data, req_ctx->in_nents, src,
					nbytes, 0, true,
					&req_ctx->in_mlli_nents);
		}
	} else {
		/* Map the dst sg */
		rc = FUNC3(dev, dst, nbytes, DMA_BIDIRECTIONAL,
			       &req_ctx->out_nents, LLI_MAX_NUM_OF_DATA_ENTRIES,
			       &dummy, &mapped_nents);
		if (rc)
			goto cipher_exit;
		if (mapped_nents > 1)
			req_ctx->dma_buf_type = CC_DMA_BUF_MLLI;

		if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
			FUNC0(dev, &sg_data, req_ctx->in_nents, src,
					nbytes, 0, true,
					&req_ctx->in_mlli_nents);
			FUNC0(dev, &sg_data, req_ctx->out_nents, dst,
					nbytes, 0, true,
					&req_ctx->out_mlli_nents);
		}
	}

	if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
		mlli_params->curr_pool = buff_mgr->mlli_buffs_pool;
		rc = FUNC2(dev, &sg_data, mlli_params, flags);
		if (rc)
			goto cipher_exit;
	}

	FUNC5(dev, "areq_ctx->dma_buf_type = %s\n",
		FUNC1(req_ctx->dma_buf_type));

	return 0;

cipher_exit:
	FUNC4(dev, req_ctx, ivsize, src, dst);
	return rc;
}