
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct mtk_cryp {int dummy; } ;
struct mtk_aes_rec {scalar_t__ total; int areq; struct mtk_aes_base_ctx* ctx; } ;
struct mtk_aes_ctr_ctx {scalar_t__ offset; int * iv; int dst; int src; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct mtk_aes_base_ctx {scalar_t__ keylen; TYPE_1__ info; } ;
struct ablkcipher_request {scalar_t__ nbytes; int dst; int src; } ;


 int AES_BLOCK_SIZE ;
 int DIV_ROUND_UP (size_t,int) ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int crypto_inc (int *,int) ;
 struct mtk_aes_ctr_ctx* mtk_aes_ctr_ctx_cast (struct mtk_aes_base_ctx*) ;
 int mtk_aes_dma (struct mtk_cryp*,struct mtk_aes_rec*,struct scatterlist*,struct scatterlist*,size_t) ;
 int mtk_aes_transfer_complete (struct mtk_cryp*,struct mtk_aes_rec*) ;
 int mtk_aes_write_state_le (scalar_t__,int *,int) ;
 struct scatterlist* scatterwalk_ffwd (int ,int ,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mtk_aes_ctr_transfer(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
 struct mtk_aes_base_ctx *ctx = aes->ctx;
 struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(ctx);
 struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
 struct scatterlist *src, *dst;
 u32 start, end, ctr, blocks;
 size_t datalen;
 bool fragmented = 0;


 cctx->offset += aes->total;
 if (cctx->offset >= req->nbytes)
  return mtk_aes_transfer_complete(cryp, aes);


 datalen = req->nbytes - cctx->offset;
 blocks = DIV_ROUND_UP(datalen, AES_BLOCK_SIZE);
 ctr = be32_to_cpu(cctx->iv[3]);


 start = ctr;
 end = start + blocks - 1;
 if (end < start) {
  ctr |= 0xffffffff;
  datalen = AES_BLOCK_SIZE * -start;
  fragmented = 1;
 }


 src = scatterwalk_ffwd(cctx->src, req->src, cctx->offset);
 dst = ((req->src == req->dst) ? src :
        scatterwalk_ffwd(cctx->dst, req->dst, cctx->offset));


 mtk_aes_write_state_le(ctx->info.state + ctx->keylen, cctx->iv,
          AES_BLOCK_SIZE);

 if (unlikely(fragmented)) {




  cctx->iv[3] = cpu_to_be32(ctr);
  crypto_inc((u8 *)cctx->iv, AES_BLOCK_SIZE);
 }

 return mtk_aes_dma(cryp, aes, src, dst, datalen);
}
