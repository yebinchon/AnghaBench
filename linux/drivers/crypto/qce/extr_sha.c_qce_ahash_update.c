
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct qce_sha_reqctx {unsigned int count; unsigned int buflen; unsigned int nbytes_orig; struct scatterlist* sg; int tmpbuf; scalar_t__ buf; struct scatterlist* src_orig; } ;
struct qce_device {int (* async_req_enqueue ) (struct qce_device*,TYPE_1__*) ;} ;
struct qce_alg_template {struct qce_device* qce; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {unsigned int nbytes; TYPE_1__ base; struct scatterlist* src; } ;


 int EINVAL ;
 struct qce_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 int memcpy (int ,scalar_t__,int) ;
 int scatterwalk_map_and_copy (scalar_t__,struct scatterlist*,unsigned int,unsigned int,int ) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_mark_end (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_buf (struct scatterlist*,int ,int) ;
 int stub1 (struct qce_device*,TYPE_1__*) ;
 struct qce_alg_template* to_ahash_tmpl (int ) ;

__attribute__((used)) static int qce_ahash_update(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct qce_sha_reqctx *rctx = ahash_request_ctx(req);
 struct qce_alg_template *tmpl = to_ahash_tmpl(req->base.tfm);
 struct qce_device *qce = tmpl->qce;
 struct scatterlist *sg_last, *sg;
 unsigned int total, len;
 unsigned int hash_later;
 unsigned int nbytes;
 unsigned int blocksize;

 blocksize = crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));
 rctx->count += req->nbytes;


 total = req->nbytes + rctx->buflen;

 if (total <= blocksize) {
  scatterwalk_map_and_copy(rctx->buf + rctx->buflen, req->src,
      0, req->nbytes, 0);
  rctx->buflen += req->nbytes;
  return 0;
 }


 rctx->src_orig = req->src;
 rctx->nbytes_orig = req->nbytes;





 if (rctx->buflen)
  memcpy(rctx->tmpbuf, rctx->buf, rctx->buflen);


 hash_later = total % blocksize;
 if (hash_later) {
  unsigned int src_offset = req->nbytes - hash_later;
  scatterwalk_map_and_copy(rctx->buf, req->src, src_offset,
      hash_later, 0);
 }


 nbytes = total - hash_later;

 len = rctx->buflen;
 sg = sg_last = req->src;

 while (len < nbytes && sg) {
  if (len + sg_dma_len(sg) > nbytes)
   break;
  len += sg_dma_len(sg);
  sg_last = sg;
  sg = sg_next(sg);
 }

 if (!sg_last)
  return -EINVAL;

 sg_mark_end(sg_last);

 if (rctx->buflen) {
  sg_init_table(rctx->sg, 2);
  sg_set_buf(rctx->sg, rctx->tmpbuf, rctx->buflen);
  sg_chain(rctx->sg, 2, req->src);
  req->src = rctx->sg;
 }

 req->nbytes = nbytes;
 rctx->buflen = hash_later;

 return qce->async_req_enqueue(tmpl->qce, &req->base);
}
