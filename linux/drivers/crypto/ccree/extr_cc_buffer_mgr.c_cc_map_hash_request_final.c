
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct scatterlist {unsigned int length; } ;
struct mlli_params {int * curr_pool; } ;
struct device {int dummy; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buffer_array {scalar_t__ num_of_buffers; } ;
struct buff_mgr_handle {int * mlli_buffs_pool; } ;
struct ahash_req_ctx {int buff_index; scalar_t__ data_dma_buf_type; int in_nents; struct scatterlist* buff_sg; int mlli_nents; struct scatterlist* curr_sg; struct mlli_params mlli_params; } ;
typedef int gfp_t ;


 scalar_t__ CC_DMA_BUF_DLLI ;
 scalar_t__ CC_DMA_BUF_MLLI ;
 scalar_t__ CC_DMA_BUF_NULL ;
 int DMA_TO_DEVICE ;
 int LLI_MAX_NUM_OF_DATA_ENTRIES ;
 int cc_add_sg_entry (struct device*,struct buffer_array*,int,struct scatterlist*,unsigned int,int ,int,int *) ;
 int cc_dma_buf_type (scalar_t__) ;
 int cc_generate_mlli (struct device*,struct buffer_array*,struct mlli_params*,int ) ;
 int * cc_hash_buf (struct ahash_req_ctx*) ;
 scalar_t__* cc_hash_buf_cnt (struct ahash_req_ctx*) ;
 int cc_map_sg (struct device*,struct scatterlist*,unsigned int,int ,int*,int ,scalar_t__*,scalar_t__*) ;
 int cc_set_hash_buf (struct device*,struct ahash_req_ctx*,int *,scalar_t__,struct buffer_array*) ;
 int dev_dbg (struct device*,char*,int ,...) ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int,int ) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int memcpy (struct scatterlist*,struct scatterlist*,int) ;

int cc_map_hash_request_final(struct cc_drvdata *drvdata, void *ctx,
         struct scatterlist *src, unsigned int nbytes,
         bool do_update, gfp_t flags)
{
 struct ahash_req_ctx *areq_ctx = (struct ahash_req_ctx *)ctx;
 struct device *dev = drvdata_to_dev(drvdata);
 u8 *curr_buff = cc_hash_buf(areq_ctx);
 u32 *curr_buff_cnt = cc_hash_buf_cnt(areq_ctx);
 struct mlli_params *mlli_params = &areq_ctx->mlli_params;
 struct buffer_array sg_data;
 struct buff_mgr_handle *buff_mgr = drvdata->buff_mgr_handle;
 int rc = 0;
 u32 dummy = 0;
 u32 mapped_nents = 0;

 dev_dbg(dev, "final params : curr_buff=%pK curr_buff_cnt=0x%X nbytes = 0x%X src=%pK curr_index=%u\n",
  curr_buff, *curr_buff_cnt, nbytes, src, areq_ctx->buff_index);

 areq_ctx->data_dma_buf_type = CC_DMA_BUF_NULL;
 mlli_params->curr_pool = ((void*)0);
 sg_data.num_of_buffers = 0;
 areq_ctx->in_nents = 0;

 if (nbytes == 0 && *curr_buff_cnt == 0) {

  return 0;
 }



 if (*curr_buff_cnt) {
  rc = cc_set_hash_buf(dev, areq_ctx, curr_buff, *curr_buff_cnt,
         &sg_data);
  if (rc)
   return rc;
 }

 if (src && nbytes > 0 && do_update) {
  rc = cc_map_sg(dev, src, nbytes, DMA_TO_DEVICE,
          &areq_ctx->in_nents, LLI_MAX_NUM_OF_DATA_ENTRIES,
          &dummy, &mapped_nents);
  if (rc)
   goto unmap_curr_buff;
  if (src && mapped_nents == 1 &&
      areq_ctx->data_dma_buf_type == CC_DMA_BUF_NULL) {
   memcpy(areq_ctx->buff_sg, src,
          sizeof(struct scatterlist));
   areq_ctx->buff_sg->length = nbytes;
   areq_ctx->curr_sg = areq_ctx->buff_sg;
   areq_ctx->data_dma_buf_type = CC_DMA_BUF_DLLI;
  } else {
   areq_ctx->data_dma_buf_type = CC_DMA_BUF_MLLI;
  }
 }


 if (areq_ctx->data_dma_buf_type == CC_DMA_BUF_MLLI) {
  mlli_params->curr_pool = buff_mgr->mlli_buffs_pool;

  cc_add_sg_entry(dev, &sg_data, areq_ctx->in_nents, src, nbytes,
    0, 1, &areq_ctx->mlli_nents);
  rc = cc_generate_mlli(dev, &sg_data, mlli_params, flags);
  if (rc)
   goto fail_unmap_din;
 }

 areq_ctx->buff_index = (areq_ctx->buff_index ^ 1);
 dev_dbg(dev, "areq_ctx->data_dma_buf_type = %s\n",
  cc_dma_buf_type(areq_ctx->data_dma_buf_type));
 return 0;

fail_unmap_din:
 dma_unmap_sg(dev, src, areq_ctx->in_nents, DMA_TO_DEVICE);

unmap_curr_buff:
 if (*curr_buff_cnt)
  dma_unmap_sg(dev, areq_ctx->buff_sg, 1, DMA_TO_DEVICE);

 return rc;
}
