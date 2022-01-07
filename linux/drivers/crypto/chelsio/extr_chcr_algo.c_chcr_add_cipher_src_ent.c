
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ulptx_walk {int last_sg_len; int last_sg; } ;
struct ulptx_sgl {int dummy; } ;
struct cipher_wr_param {int bytes; } ;
struct chcr_blkcipher_req_ctx {int src_ofst; int srcsg; int processed; scalar_t__ imm; int iv; } ;
struct ablkcipher_request {int src; } ;


 int IV ;
 struct chcr_blkcipher_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int memcpy (int *,int ,int ) ;
 int sg_nents (int ) ;
 int sg_pcopy_to_buffer (int ,int ,int *,int ,int ) ;
 int ulptx_walk_add_sg (struct ulptx_walk*,int ,int ,int ) ;
 int ulptx_walk_end (struct ulptx_walk*) ;
 int ulptx_walk_init (struct ulptx_walk*,struct ulptx_sgl*) ;

void chcr_add_cipher_src_ent(struct ablkcipher_request *req,
        void *ulptx,
        struct cipher_wr_param *wrparam)
{
 struct ulptx_walk ulp_walk;
 struct chcr_blkcipher_req_ctx *reqctx = ablkcipher_request_ctx(req);
 u8 *buf = ulptx;

 memcpy(buf, reqctx->iv, IV);
 buf += IV;
 if (reqctx->imm) {
  sg_pcopy_to_buffer(req->src, sg_nents(req->src),
       buf, wrparam->bytes, reqctx->processed);
 } else {
  ulptx_walk_init(&ulp_walk, (struct ulptx_sgl *)buf);
  ulptx_walk_add_sg(&ulp_walk, reqctx->srcsg, wrparam->bytes,
      reqctx->src_ofst);
  reqctx->srcsg = ulp_walk.last_sg;
  reqctx->src_ofst = ulp_walk.last_sg_len;
  ulptx_walk_end(&ulp_walk);
 }
}
