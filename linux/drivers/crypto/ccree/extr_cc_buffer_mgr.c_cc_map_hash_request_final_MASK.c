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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct scatterlist {unsigned int length; } ;
struct mlli_params {int /*<<< orphan*/ * curr_pool; } ;
struct device {int dummy; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buffer_array {scalar_t__ num_of_buffers; } ;
struct buff_mgr_handle {int /*<<< orphan*/ * mlli_buffs_pool; } ;
struct ahash_req_ctx {int buff_index; scalar_t__ data_dma_buf_type; int in_nents; struct scatterlist* buff_sg; int /*<<< orphan*/  mlli_nents; struct scatterlist* curr_sg; struct mlli_params mlli_params; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ CC_DMA_BUF_DLLI ; 
 scalar_t__ CC_DMA_BUF_MLLI ; 
 scalar_t__ CC_DMA_BUF_NULL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  LLI_MAX_NUM_OF_DATA_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct buffer_array*,int,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*,struct buffer_array*,struct mlli_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct ahash_req_ctx*) ; 
 scalar_t__* FUNC4 (struct ahash_req_ctx*) ; 
 int FUNC5 (struct device*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC6 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ *,scalar_t__,struct buffer_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC9 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,struct scatterlist*,int) ; 

int FUNC11(struct cc_drvdata *drvdata, void *ctx,
			      struct scatterlist *src, unsigned int nbytes,
			      bool do_update, gfp_t flags)
{
	struct ahash_req_ctx *areq_ctx = (struct ahash_req_ctx *)ctx;
	struct device *dev = FUNC9(drvdata);
	u8 *curr_buff = FUNC3(areq_ctx);
	u32 *curr_buff_cnt = FUNC4(areq_ctx);
	struct mlli_params *mlli_params = &areq_ctx->mlli_params;
	struct buffer_array sg_data;
	struct buff_mgr_handle *buff_mgr = drvdata->buff_mgr_handle;
	int rc = 0;
	u32 dummy = 0;
	u32 mapped_nents = 0;

	FUNC7(dev, "final params : curr_buff=%pK curr_buff_cnt=0x%X nbytes = 0x%X src=%pK curr_index=%u\n",
		*curr_buff, *curr_buff_cnt, nbytes, src, areq_ctx->buff_index);
	/* Init the type of the dma buffer */
	areq_ctx->data_dma_buf_type = CC_DMA_BUF_NULL;
	mlli_params->curr_pool = NULL;
	sg_data.num_of_buffers = 0;
	areq_ctx->in_nents = 0;

	if (nbytes == 0 && *curr_buff_cnt == 0) {
		/* nothing to do */
		return 0;
	}

	/*TODO: copy data in case that buffer is enough for operation */
	/* map the previous buffer */
	if (*curr_buff_cnt) {
		rc = FUNC6(dev, areq_ctx, curr_buff, *curr_buff_cnt,
				     &sg_data);
		if (rc)
			return rc;
	}

	if (src && nbytes > 0 && do_update) {
		rc = FUNC5(dev, src, nbytes, DMA_TO_DEVICE,
			       &areq_ctx->in_nents, LLI_MAX_NUM_OF_DATA_ENTRIES,
			       &dummy, &mapped_nents);
		if (rc)
			goto unmap_curr_buff;
		if (src && mapped_nents == 1 &&
		    areq_ctx->data_dma_buf_type == CC_DMA_BUF_NULL) {
			FUNC10(areq_ctx->buff_sg, src,
			       sizeof(struct scatterlist));
			areq_ctx->buff_sg->length = nbytes;
			areq_ctx->curr_sg = areq_ctx->buff_sg;
			areq_ctx->data_dma_buf_type = CC_DMA_BUF_DLLI;
		} else {
			areq_ctx->data_dma_buf_type = CC_DMA_BUF_MLLI;
		}
	}

	/*build mlli */
	if (areq_ctx->data_dma_buf_type == CC_DMA_BUF_MLLI) {
		mlli_params->curr_pool = buff_mgr->mlli_buffs_pool;
		/* add the src data to the sg_data */
		FUNC0(dev, &sg_data, areq_ctx->in_nents, src, nbytes,
				0, true, &areq_ctx->mlli_nents);
		rc = FUNC2(dev, &sg_data, mlli_params, flags);
		if (rc)
			goto fail_unmap_din;
	}
	/* change the buffer index for the unmap function */
	areq_ctx->buff_index = (areq_ctx->buff_index ^ 1);
	FUNC7(dev, "areq_ctx->data_dma_buf_type = %s\n",
		FUNC1(areq_ctx->data_dma_buf_type));
	return 0;

fail_unmap_din:
	FUNC8(dev, src, areq_ctx->in_nents, DMA_TO_DEVICE);

unmap_curr_buff:
	if (*curr_buff_cnt)
		FUNC8(dev, areq_ctx->buff_sg, 1, DMA_TO_DEVICE);

	return rc;
}