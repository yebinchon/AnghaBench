
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_sg_entry {int dummy; } ;
struct dpaa2_fl_entry {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct caam_request {struct ahash_edesc* edesc; TYPE_1__* ctx; int cbk; int flc_dma; int * flc; struct dpaa2_fl_entry* fd_flt; } ;
struct caam_hash_state {int ctx_dma_len; void* ctx_dma; struct dpaa2_sg_entry* caam_ctx; scalar_t__ buf_dma; struct caam_request caam_req; } ;
struct caam_hash_ctx {int dev; int * flc_dma; int * flc; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {int nbytes; TYPE_1__ base; int src; } ;
struct ahash_edesc {int src_nents; int qm_sg_bytes; void* qm_sg_dma; struct dpaa2_sg_entry* sgt; } ;
typedef int gfp_t ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 size_t DIGEST ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EBUSY ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int ahash_done ;
 struct caam_hash_state* ahash_request_ctx (struct ahash_request*) ;
 int ahash_unmap_ctx (int ,struct ahash_edesc*,struct ahash_request*,int ) ;
 struct caam_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,int ,int,int ) ;
 void* dma_map_single (int ,struct dpaa2_sg_entry*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_unmap_sg (int ,int ,int,int ) ;
 int dpaa2_caam_enqueue (int ,struct caam_request*) ;
 int dpaa2_fl_set_addr (struct dpaa2_fl_entry*,void*) ;
 int dpaa2_fl_set_final (struct dpaa2_fl_entry*,int) ;
 int dpaa2_fl_set_format (struct dpaa2_fl_entry*,int ) ;
 int dpaa2_fl_set_len (struct dpaa2_fl_entry*,int) ;
 int dpaa2_fl_sg ;
 int dpaa2_fl_single ;
 int memset (struct dpaa2_fl_entry**,int ,int) ;
 int pad_sg_nents (int) ;
 int qi_cache_free (struct ahash_edesc*) ;
 struct ahash_edesc* qi_cache_zalloc (int) ;
 void* sg_dma_address (int ) ;
 int sg_nents_for_len (int ,int) ;
 int sg_to_qm_sg_last (int ,int,struct dpaa2_sg_entry*,int ) ;

__attribute__((used)) static int ahash_digest(struct ahash_request *req)
{
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(req);
 struct caam_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 struct caam_hash_state *state = ahash_request_ctx(req);
 struct caam_request *req_ctx = &state->caam_req;
 struct dpaa2_fl_entry *in_fle = &req_ctx->fd_flt[1];
 struct dpaa2_fl_entry *out_fle = &req_ctx->fd_flt[0];
 gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
        GFP_KERNEL : GFP_ATOMIC;
 int digestsize = crypto_ahash_digestsize(ahash);
 int src_nents, mapped_nents;
 struct ahash_edesc *edesc;
 int ret = -ENOMEM;

 state->buf_dma = 0;

 src_nents = sg_nents_for_len(req->src, req->nbytes);
 if (src_nents < 0) {
  dev_err(ctx->dev, "Invalid number of src SG.\n");
  return src_nents;
 }

 if (src_nents) {
  mapped_nents = dma_map_sg(ctx->dev, req->src, src_nents,
       DMA_TO_DEVICE);
  if (!mapped_nents) {
   dev_err(ctx->dev, "unable to map source for DMA\n");
   return ret;
  }
 } else {
  mapped_nents = 0;
 }


 edesc = qi_cache_zalloc(GFP_DMA | flags);
 if (!edesc) {
  dma_unmap_sg(ctx->dev, req->src, src_nents, DMA_TO_DEVICE);
  return ret;
 }

 edesc->src_nents = src_nents;
 memset(&req_ctx->fd_flt, 0, sizeof(req_ctx->fd_flt));

 if (mapped_nents > 1) {
  int qm_sg_bytes;
  struct dpaa2_sg_entry *sg_table = &edesc->sgt[0];

  qm_sg_bytes = pad_sg_nents(mapped_nents) * sizeof(*sg_table);
  sg_to_qm_sg_last(req->src, req->nbytes, sg_table, 0);
  edesc->qm_sg_dma = dma_map_single(ctx->dev, sg_table,
        qm_sg_bytes, DMA_TO_DEVICE);
  if (dma_mapping_error(ctx->dev, edesc->qm_sg_dma)) {
   dev_err(ctx->dev, "unable to map S/G table\n");
   goto unmap;
  }
  edesc->qm_sg_bytes = qm_sg_bytes;
  dpaa2_fl_set_format(in_fle, dpaa2_fl_sg);
  dpaa2_fl_set_addr(in_fle, edesc->qm_sg_dma);
 } else {
  dpaa2_fl_set_format(in_fle, dpaa2_fl_single);
  dpaa2_fl_set_addr(in_fle, sg_dma_address(req->src));
 }

 state->ctx_dma_len = digestsize;
 state->ctx_dma = dma_map_single(ctx->dev, state->caam_ctx, digestsize,
     DMA_FROM_DEVICE);
 if (dma_mapping_error(ctx->dev, state->ctx_dma)) {
  dev_err(ctx->dev, "unable to map ctx\n");
  state->ctx_dma = 0;
  goto unmap;
 }

 dpaa2_fl_set_final(in_fle, 1);
 dpaa2_fl_set_len(in_fle, req->nbytes);
 dpaa2_fl_set_format(out_fle, dpaa2_fl_single);
 dpaa2_fl_set_addr(out_fle, state->ctx_dma);
 dpaa2_fl_set_len(out_fle, digestsize);

 req_ctx->flc = &ctx->flc[DIGEST];
 req_ctx->flc_dma = ctx->flc_dma[DIGEST];
 req_ctx->cbk = ahash_done;
 req_ctx->ctx = &req->base;
 req_ctx->edesc = edesc;
 ret = dpaa2_caam_enqueue(ctx->dev, req_ctx);
 if (ret == -EINPROGRESS ||
     (ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG))
  return ret;

unmap:
 ahash_unmap_ctx(ctx->dev, edesc, req, DMA_FROM_DEVICE);
 qi_cache_free(edesc);
 return ret;
}
