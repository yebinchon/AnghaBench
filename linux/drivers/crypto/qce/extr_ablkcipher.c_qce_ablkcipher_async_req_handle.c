
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_10__ {int result_buf; } ;
struct qce_device {int dev; TYPE_5__ dma; } ;
struct TYPE_9__ {scalar_t__ sgl; } ;
struct qce_cipher_reqctx {int src_nents; int dst_nents; scalar_t__ dst_sg; scalar_t__ src_sg; TYPE_2__ dst_tbl; int result_sg; int cryptlen; int ivsize; int iv; } ;
struct qce_alg_template {int crypto_alg_type; struct qce_device* qce; } ;
struct crypto_async_request {int tfm; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; int nbytes; TYPE_1__ base; int info; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct scatterlist*) ;
 int PTR_ERR (struct scatterlist*) ;
 int QCE_RESULT_BUF_SZ ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct qce_cipher_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,scalar_t__,int,int) ;
 int dma_unmap_sg (int ,scalar_t__,int,int) ;
 int qce_ablkcipher_done ;
 int qce_dma_issue_pending (TYPE_5__*) ;
 int qce_dma_prep_sgs (TYPE_5__*,scalar_t__,int,scalar_t__,int,int ,struct crypto_async_request*) ;
 int qce_dma_terminate_all (TYPE_5__*) ;
 struct scatterlist* qce_sgtable_add (TYPE_2__*,int *) ;
 int qce_start (struct crypto_async_request*,int ,int ,int ) ;
 int sg_alloc_table (TYPE_2__*,int,int ) ;
 int sg_free_table (TYPE_2__*) ;
 int sg_init_one (int *,int ,int ) ;
 int sg_mark_end (struct scatterlist*) ;
 void* sg_nents_for_len (scalar_t__,int ) ;
 struct qce_alg_template* to_cipher_tmpl (int ) ;

__attribute__((used)) static int
qce_ablkcipher_async_req_handle(struct crypto_async_request *async_req)
{
 struct ablkcipher_request *req = ablkcipher_request_cast(async_req);
 struct qce_cipher_reqctx *rctx = ablkcipher_request_ctx(req);
 struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
 struct qce_alg_template *tmpl = to_cipher_tmpl(async_req->tfm);
 struct qce_device *qce = tmpl->qce;
 enum dma_data_direction dir_src, dir_dst;
 struct scatterlist *sg;
 bool diff_dst;
 gfp_t gfp;
 int ret;

 rctx->iv = req->info;
 rctx->ivsize = crypto_ablkcipher_ivsize(ablkcipher);
 rctx->cryptlen = req->nbytes;

 diff_dst = (req->src != req->dst) ? 1 : 0;
 dir_src = diff_dst ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL;
 dir_dst = diff_dst ? DMA_FROM_DEVICE : DMA_BIDIRECTIONAL;

 rctx->src_nents = sg_nents_for_len(req->src, req->nbytes);
 if (diff_dst)
  rctx->dst_nents = sg_nents_for_len(req->dst, req->nbytes);
 else
  rctx->dst_nents = rctx->src_nents;
 if (rctx->src_nents < 0) {
  dev_err(qce->dev, "Invalid numbers of src SG.\n");
  return rctx->src_nents;
 }
 if (rctx->dst_nents < 0) {
  dev_err(qce->dev, "Invalid numbers of dst SG.\n");
  return -rctx->dst_nents;
 }

 rctx->dst_nents += 1;

 gfp = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
      GFP_KERNEL : GFP_ATOMIC;

 ret = sg_alloc_table(&rctx->dst_tbl, rctx->dst_nents, gfp);
 if (ret)
  return ret;

 sg_init_one(&rctx->result_sg, qce->dma.result_buf, QCE_RESULT_BUF_SZ);

 sg = qce_sgtable_add(&rctx->dst_tbl, req->dst);
 if (IS_ERR(sg)) {
  ret = PTR_ERR(sg);
  goto error_free;
 }

 sg = qce_sgtable_add(&rctx->dst_tbl, &rctx->result_sg);
 if (IS_ERR(sg)) {
  ret = PTR_ERR(sg);
  goto error_free;
 }

 sg_mark_end(sg);
 rctx->dst_sg = rctx->dst_tbl.sgl;

 ret = dma_map_sg(qce->dev, rctx->dst_sg, rctx->dst_nents, dir_dst);
 if (ret < 0)
  goto error_free;

 if (diff_dst) {
  ret = dma_map_sg(qce->dev, req->src, rctx->src_nents, dir_src);
  if (ret < 0)
   goto error_unmap_dst;
  rctx->src_sg = req->src;
 } else {
  rctx->src_sg = rctx->dst_sg;
 }

 ret = qce_dma_prep_sgs(&qce->dma, rctx->src_sg, rctx->src_nents,
          rctx->dst_sg, rctx->dst_nents,
          qce_ablkcipher_done, async_req);
 if (ret)
  goto error_unmap_src;

 qce_dma_issue_pending(&qce->dma);

 ret = qce_start(async_req, tmpl->crypto_alg_type, req->nbytes, 0);
 if (ret)
  goto error_terminate;

 return 0;

error_terminate:
 qce_dma_terminate_all(&qce->dma);
error_unmap_src:
 if (diff_dst)
  dma_unmap_sg(qce->dev, req->src, rctx->src_nents, dir_src);
error_unmap_dst:
 dma_unmap_sg(qce->dev, rctx->dst_sg, rctx->dst_nents, dir_dst);
error_free:
 sg_free_table(&rctx->dst_tbl);
 return ret;
}
