
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ulptx_walk {int last_sg_len; int last_sg; } ;
struct ulptx_sgl {int dummy; } ;
struct hash_wr_param {int sg_len; int bfr_len; } ;
struct TYPE_2__ {int src_ofst; int srcsg; int dma_addr; scalar_t__ imm; } ;
struct chcr_ahash_req_ctx {TYPE_1__ hctx_wr; int reqbfr; } ;
struct ahash_request {int dummy; } ;


 struct chcr_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int *,int ,int ) ;
 int sg_nents (int ) ;
 int sg_pcopy_to_buffer (int ,int ,int *,int ,int ) ;
 int ulptx_walk_add_page (struct ulptx_walk*,int ,int ) ;
 int ulptx_walk_add_sg (struct ulptx_walk*,int ,int ,int ) ;
 int ulptx_walk_end (struct ulptx_walk*) ;
 int ulptx_walk_init (struct ulptx_walk*,struct ulptx_sgl*) ;

void chcr_add_hash_src_ent(struct ahash_request *req,
      struct ulptx_sgl *ulptx,
      struct hash_wr_param *param)
{
 struct ulptx_walk ulp_walk;
 struct chcr_ahash_req_ctx *reqctx = ahash_request_ctx(req);

 if (reqctx->hctx_wr.imm) {
  u8 *buf = (u8 *)ulptx;

  if (param->bfr_len) {
   memcpy(buf, reqctx->reqbfr, param->bfr_len);
   buf += param->bfr_len;
  }

  sg_pcopy_to_buffer(reqctx->hctx_wr.srcsg,
       sg_nents(reqctx->hctx_wr.srcsg), buf,
       param->sg_len, 0);
 } else {
  ulptx_walk_init(&ulp_walk, ulptx);
  if (param->bfr_len)
   ulptx_walk_add_page(&ulp_walk, param->bfr_len,
         reqctx->hctx_wr.dma_addr);
  ulptx_walk_add_sg(&ulp_walk, reqctx->hctx_wr.srcsg,
      param->sg_len, reqctx->hctx_wr.src_ofst);
  reqctx->hctx_wr.srcsg = ulp_walk.last_sg;
  reqctx->hctx_wr.src_ofst = ulp_walk.last_sg_len;
  ulptx_walk_end(&ulp_walk);
 }
}
