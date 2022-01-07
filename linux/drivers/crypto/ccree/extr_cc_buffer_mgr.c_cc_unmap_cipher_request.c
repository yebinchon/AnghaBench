
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int mlli_dma_addr; scalar_t__ mlli_virt_addr; int curr_pool; } ;
struct TYPE_3__ {scalar_t__ iv_dma_addr; } ;
struct cipher_req_ctx {scalar_t__ dma_buf_type; int out_nents; int in_nents; TYPE_2__ mlli_params; TYPE_1__ gen_ctx; } ;


 scalar_t__ CC_DMA_BUF_MLLI ;
 int DMA_BIDIRECTIONAL ;
 int dev_dbg (struct device*,char*,int ,...) ;
 int dma_pool_free (int ,scalar_t__,int ) ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int ,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,unsigned int,int ) ;
 int sg_virt (struct scatterlist*) ;

void cc_unmap_cipher_request(struct device *dev, void *ctx,
    unsigned int ivsize, struct scatterlist *src,
    struct scatterlist *dst)
{
 struct cipher_req_ctx *req_ctx = (struct cipher_req_ctx *)ctx;

 if (req_ctx->gen_ctx.iv_dma_addr) {
  dev_dbg(dev, "Unmapped iv: iv_dma_addr=%pad iv_size=%u\n",
   &req_ctx->gen_ctx.iv_dma_addr, ivsize);
  dma_unmap_single(dev, req_ctx->gen_ctx.iv_dma_addr,
     ivsize, DMA_BIDIRECTIONAL);
 }

 if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI &&
     req_ctx->mlli_params.mlli_virt_addr) {
  dma_pool_free(req_ctx->mlli_params.curr_pool,
         req_ctx->mlli_params.mlli_virt_addr,
         req_ctx->mlli_params.mlli_dma_addr);
 }

 dma_unmap_sg(dev, src, req_ctx->in_nents, DMA_BIDIRECTIONAL);
 dev_dbg(dev, "Unmapped req->src=%pK\n", sg_virt(src));

 if (src != dst) {
  dma_unmap_sg(dev, dst, req_ctx->out_nents, DMA_BIDIRECTIONAL);
  dev_dbg(dev, "Unmapped req->dst=%pK\n", sg_virt(dst));
 }
}
