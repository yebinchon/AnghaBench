
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct cc_drvdata {int coherent; } ;
struct buffer_array {int dummy; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_6__ {int nents; int mlli_nents; } ;
struct TYPE_5__ {int nents; int mlli_nents; } ;
struct TYPE_4__ {int op_type; } ;
struct aead_req_ctx {unsigned int req_authsize; unsigned int icv_virt_addr; unsigned int backup_mac; unsigned int mac_buf; unsigned int icv_dma_addr; unsigned int mac_buf_dma_addr; TYPE_3__ dst; struct scatterlist* dst_sgl; void* is_icv_fragmented; TYPE_2__ src; int src_offset; int cryptlen; struct scatterlist* src_sgl; int dst_offset; TYPE_1__ gen_ctx; } ;
typedef enum drv_crypto_direction { ____Placeholder_drv_crypto_direction } drv_crypto_direction ;


 int CC_SG_TO_BUF ;
 int DRV_CRYPTO_DIRECTION_DECRYPT ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int cc_add_sg_entry (struct device*,struct buffer_array*,int,struct scatterlist*,int ,int ,int,int *) ;
 int cc_copy_mac (struct device*,struct aead_request*,int ) ;
 void* cc_is_icv_frag (int,unsigned int,unsigned int) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 unsigned int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_virt (struct scatterlist*) ;

__attribute__((used)) static void cc_prepare_aead_data_mlli(struct cc_drvdata *drvdata,
          struct aead_request *req,
          struct buffer_array *sg_data,
          u32 *src_last_bytes, u32 *dst_last_bytes,
          bool is_last_table)
{
 struct aead_req_ctx *areq_ctx = aead_request_ctx(req);
 enum drv_crypto_direction direct = areq_ctx->gen_ctx.op_type;
 unsigned int authsize = areq_ctx->req_authsize;
 struct device *dev = drvdata_to_dev(drvdata);
 struct scatterlist *sg;

 if (req->src == req->dst) {

  cc_add_sg_entry(dev, sg_data, areq_ctx->src.nents,
    areq_ctx->src_sgl, areq_ctx->cryptlen,
    areq_ctx->src_offset, is_last_table,
    &areq_ctx->src.mlli_nents);

  areq_ctx->is_icv_fragmented =
   cc_is_icv_frag(areq_ctx->src.nents, authsize,
           *src_last_bytes);

  if (areq_ctx->is_icv_fragmented) {




   if (direct == DRV_CRYPTO_DIRECTION_DECRYPT) {





    if (!drvdata->coherent)
     cc_copy_mac(dev, req, CC_SG_TO_BUF);

    areq_ctx->icv_virt_addr = areq_ctx->backup_mac;
   } else {
    areq_ctx->icv_virt_addr = areq_ctx->mac_buf;
    areq_ctx->icv_dma_addr =
     areq_ctx->mac_buf_dma_addr;
   }
  } else {
   sg = &areq_ctx->src_sgl[areq_ctx->src.nents - 1];

   areq_ctx->icv_dma_addr = sg_dma_address(sg) +
    (*src_last_bytes - authsize);
   areq_ctx->icv_virt_addr = sg_virt(sg) +
    (*src_last_bytes - authsize);
  }

 } else if (direct == DRV_CRYPTO_DIRECTION_DECRYPT) {

  cc_add_sg_entry(dev, sg_data, areq_ctx->src.nents,
    areq_ctx->src_sgl, areq_ctx->cryptlen,
    areq_ctx->src_offset, is_last_table,
    &areq_ctx->src.mlli_nents);
  cc_add_sg_entry(dev, sg_data, areq_ctx->dst.nents,
    areq_ctx->dst_sgl, areq_ctx->cryptlen,
    areq_ctx->dst_offset, is_last_table,
    &areq_ctx->dst.mlli_nents);

  areq_ctx->is_icv_fragmented =
   cc_is_icv_frag(areq_ctx->src.nents, authsize,
           *src_last_bytes);





  if (areq_ctx->is_icv_fragmented) {
   cc_copy_mac(dev, req, CC_SG_TO_BUF);
   areq_ctx->icv_virt_addr = areq_ctx->backup_mac;

  } else {
   sg = &areq_ctx->src_sgl[areq_ctx->src.nents - 1];

   areq_ctx->icv_dma_addr = sg_dma_address(sg) +
    (*src_last_bytes - authsize);
   areq_ctx->icv_virt_addr = sg_virt(sg) +
    (*src_last_bytes - authsize);
  }

 } else {

  cc_add_sg_entry(dev, sg_data, areq_ctx->dst.nents,
    areq_ctx->dst_sgl, areq_ctx->cryptlen,
    areq_ctx->dst_offset, is_last_table,
    &areq_ctx->dst.mlli_nents);
  cc_add_sg_entry(dev, sg_data, areq_ctx->src.nents,
    areq_ctx->src_sgl, areq_ctx->cryptlen,
    areq_ctx->src_offset, is_last_table,
    &areq_ctx->src.mlli_nents);

  areq_ctx->is_icv_fragmented =
   cc_is_icv_frag(areq_ctx->dst.nents, authsize,
           *dst_last_bytes);

  if (!areq_ctx->is_icv_fragmented) {
   sg = &areq_ctx->dst_sgl[areq_ctx->dst.nents - 1];

   areq_ctx->icv_dma_addr = sg_dma_address(sg) +
    (*dst_last_bytes - authsize);
   areq_ctx->icv_virt_addr = sg_virt(sg) +
    (*dst_last_bytes - authsize);
  } else {
   areq_ctx->icv_dma_addr = areq_ctx->mac_buf_dma_addr;
   areq_ctx->icv_virt_addr = areq_ctx->mac_buf;
  }
 }
}
