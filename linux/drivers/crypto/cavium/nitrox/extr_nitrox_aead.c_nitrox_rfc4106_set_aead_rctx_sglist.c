
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nitrox_aead_rctx {struct scatterlist* dst; struct scatterlist* src; } ;
struct nitrox_rfc4106_rctx {struct scatterlist* dst; struct scatterlist* src; int assoc; struct nitrox_aead_rctx base; } ;
struct aead_request {unsigned int assoclen; int dst; int src; } ;


 int EINVAL ;
 unsigned int GCM_RFC4106_IV_SIZE ;
 struct nitrox_rfc4106_rctx* aead_request_ctx (struct aead_request*) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,int ,int) ;
 int scatterwalk_map_and_copy (int ,int ,int ,unsigned int,int ) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int ,unsigned int) ;

__attribute__((used)) static int nitrox_rfc4106_set_aead_rctx_sglist(struct aead_request *areq)
{
 struct nitrox_rfc4106_rctx *rctx = aead_request_ctx(areq);
 struct nitrox_aead_rctx *aead_rctx = &rctx->base;
 unsigned int assoclen = areq->assoclen - GCM_RFC4106_IV_SIZE;
 struct scatterlist *sg;

 if (areq->assoclen != 16 && areq->assoclen != 20)
  return -EINVAL;

 scatterwalk_map_and_copy(rctx->assoc, areq->src, 0, assoclen, 0);
 sg_init_table(rctx->src, 3);
 sg_set_buf(rctx->src, rctx->assoc, assoclen);
 sg = scatterwalk_ffwd(rctx->src + 1, areq->src, areq->assoclen);
 if (sg != rctx->src + 1)
  sg_chain(rctx->src, 2, sg);

 if (areq->src != areq->dst) {
  sg_init_table(rctx->dst, 3);
  sg_set_buf(rctx->dst, rctx->assoc, assoclen);
  sg = scatterwalk_ffwd(rctx->dst + 1, areq->dst, areq->assoclen);
  if (sg != rctx->dst + 1)
   sg_chain(rctx->dst, 2, sg);
 }

 aead_rctx->src = rctx->src;
 aead_rctx->dst = (areq->src == areq->dst) ? rctx->src : rctx->dst;

 return 0;
}
