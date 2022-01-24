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
typedef  unsigned int u32 ;
struct scatterlist {unsigned int length; } ;
struct mlli_params {int /*<<< orphan*/ * curr_pool; } ;
struct device {int dummy; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buffer_array {scalar_t__ num_of_buffers; } ;
struct buff_mgr_handle {int /*<<< orphan*/ * mlli_buffs_pool; } ;
struct ahash_req_ctx {unsigned int buff_index; scalar_t__ data_dma_buf_type; int in_nents; struct scatterlist* buff_sg; int /*<<< orphan*/  mlli_nents; struct scatterlist* curr_sg; struct mlli_params mlli_params; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ CC_DMA_BUF_DLLI ; 
 scalar_t__ CC_DMA_BUF_MLLI ; 
 scalar_t__ CC_DMA_BUF_NULL ; 
 int /*<<< orphan*/  CC_SG_TO_BUF ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  LLI_MAX_NUM_OF_DATA_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct buffer_array*,int,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,struct scatterlist*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct buffer_array*,struct mlli_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct ahash_req_ctx*) ; 
 unsigned int* FUNC4 (struct ahash_req_ctx*) ; 
 int FUNC5 (struct device*,struct scatterlist*,unsigned int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC6 (struct ahash_req_ctx*) ; 
 unsigned int* FUNC7 (struct ahash_req_ctx*) ; 
 int FUNC8 (struct device*,struct ahash_req_ctx*,int /*<<< orphan*/ *,unsigned int,struct buffer_array*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC11 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*,int,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC14 (struct scatterlist*,unsigned int) ; 

int FUNC15(struct cc_drvdata *drvdata, void *ctx,
			       struct scatterlist *src, unsigned int nbytes,
			       unsigned int block_size, gfp_t flags)
{
	struct ahash_req_ctx *areq_ctx = (struct ahash_req_ctx *)ctx;
	struct device *dev = FUNC11(drvdata);
	u8 *curr_buff = FUNC3(areq_ctx);
	u32 *curr_buff_cnt = FUNC4(areq_ctx);
	u8 *next_buff = FUNC6(areq_ctx);
	u32 *next_buff_cnt = FUNC7(areq_ctx);
	struct mlli_params *mlli_params = &areq_ctx->mlli_params;
	unsigned int update_data_len;
	u32 total_in_len = nbytes + *curr_buff_cnt;
	struct buffer_array sg_data;
	struct buff_mgr_handle *buff_mgr = drvdata->buff_mgr_handle;
	unsigned int swap_index = 0;
	int rc = 0;
	u32 dummy = 0;
	u32 mapped_nents = 0;

	FUNC9(dev, " update params : curr_buff=%pK curr_buff_cnt=0x%X nbytes=0x%X src=%pK curr_index=%u\n",
		curr_buff, *curr_buff_cnt, nbytes, src, areq_ctx->buff_index);
	/* Init the type of the dma buffer */
	areq_ctx->data_dma_buf_type = CC_DMA_BUF_NULL;
	mlli_params->curr_pool = NULL;
	areq_ctx->curr_sg = NULL;
	sg_data.num_of_buffers = 0;
	areq_ctx->in_nents = 0;

	if (total_in_len < block_size) {
		FUNC9(dev, " less than one block: curr_buff=%pK *curr_buff_cnt=0x%X copy_to=%pK\n",
			curr_buff, *curr_buff_cnt, &curr_buff[*curr_buff_cnt]);
		areq_ctx->in_nents = FUNC14(src, nbytes);
		FUNC13(src, areq_ctx->in_nents,
				  &curr_buff[*curr_buff_cnt], nbytes);
		*curr_buff_cnt += nbytes;
		return 1;
	}

	/* Calculate the residue size*/
	*next_buff_cnt = total_in_len & (block_size - 1);
	/* update data len */
	update_data_len = total_in_len - *next_buff_cnt;

	FUNC9(dev, " temp length : *next_buff_cnt=0x%X update_data_len=0x%X\n",
		*next_buff_cnt, update_data_len);

	/* Copy the new residue to next buffer */
	if (*next_buff_cnt) {
		FUNC9(dev, " handle residue: next buff %pK skip data %u residue %u\n",
			next_buff, (update_data_len - *curr_buff_cnt),
			*next_buff_cnt);
		FUNC1(dev, next_buff, src,
				   (update_data_len - *curr_buff_cnt),
				   nbytes, CC_SG_TO_BUF);
		/* change the buffer index for next operation */
		swap_index = 1;
	}

	if (*curr_buff_cnt) {
		rc = FUNC8(dev, areq_ctx, curr_buff, *curr_buff_cnt,
				     &sg_data);
		if (rc)
			return rc;
		/* change the buffer index for next operation */
		swap_index = 1;
	}

	if (update_data_len > *curr_buff_cnt) {
		rc = FUNC5(dev, src, (update_data_len - *curr_buff_cnt),
			       DMA_TO_DEVICE, &areq_ctx->in_nents,
			       LLI_MAX_NUM_OF_DATA_ENTRIES, &dummy,
			       &mapped_nents);
		if (rc)
			goto unmap_curr_buff;
		if (mapped_nents == 1 &&
		    areq_ctx->data_dma_buf_type == CC_DMA_BUF_NULL) {
			/* only one entry in the SG and no previous data */
			FUNC12(areq_ctx->buff_sg, src,
			       sizeof(struct scatterlist));
			areq_ctx->buff_sg->length = update_data_len;
			areq_ctx->data_dma_buf_type = CC_DMA_BUF_DLLI;
			areq_ctx->curr_sg = areq_ctx->buff_sg;
		} else {
			areq_ctx->data_dma_buf_type = CC_DMA_BUF_MLLI;
		}
	}

	if (areq_ctx->data_dma_buf_type == CC_DMA_BUF_MLLI) {
		mlli_params->curr_pool = buff_mgr->mlli_buffs_pool;
		/* add the src data to the sg_data */
		FUNC0(dev, &sg_data, areq_ctx->in_nents, src,
				(update_data_len - *curr_buff_cnt), 0, true,
				&areq_ctx->mlli_nents);
		rc = FUNC2(dev, &sg_data, mlli_params, flags);
		if (rc)
			goto fail_unmap_din;
	}
	areq_ctx->buff_index = (areq_ctx->buff_index ^ swap_index);

	return 0;

fail_unmap_din:
	FUNC10(dev, src, areq_ctx->in_nents, DMA_TO_DEVICE);

unmap_curr_buff:
	if (*curr_buff_cnt)
		FUNC10(dev, areq_ctx->buff_sg, 1, DMA_TO_DEVICE);

	return rc;
}