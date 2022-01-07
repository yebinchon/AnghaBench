
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qce_sha_reqctx {int src_nents; int last_blk; int first_blk; int nbytes_orig; int * src_orig; void** byte_count; scalar_t__ digest; int result_sg; } ;
struct qce_result_dump {int * auth_byte_count; int auth_iv; } ;
struct TYPE_2__ {struct qce_result_dump* result_buf; } ;
struct qce_device {int (* async_req_done ) (struct qce_device*,int) ;int dev; TYPE_1__ dma; } ;
struct qce_alg_template {struct qce_device* qce; } ;
struct crypto_async_request {int tfm; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int nbytes; int * src; scalar_t__ result; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct qce_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 void* cpu_to_be32 (int ) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (int ,char*,int) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int memcpy (scalar_t__,int ,unsigned int) ;
 int qce_check_status (struct qce_device*,int*) ;
 int qce_dma_terminate_all (TYPE_1__*) ;
 int stub1 (struct qce_device*,int) ;
 struct qce_alg_template* to_ahash_tmpl (int ) ;

__attribute__((used)) static void qce_ahash_done(void *data)
{
 struct crypto_async_request *async_req = data;
 struct ahash_request *req = ahash_request_cast(async_req);
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(req);
 struct qce_sha_reqctx *rctx = ahash_request_ctx(req);
 struct qce_alg_template *tmpl = to_ahash_tmpl(async_req->tfm);
 struct qce_device *qce = tmpl->qce;
 struct qce_result_dump *result = qce->dma.result_buf;
 unsigned int digestsize = crypto_ahash_digestsize(ahash);
 int error;
 u32 status;

 error = qce_dma_terminate_all(&qce->dma);
 if (error)
  dev_dbg(qce->dev, "ahash dma termination error (%d)\n", error);

 dma_unmap_sg(qce->dev, req->src, rctx->src_nents, DMA_TO_DEVICE);
 dma_unmap_sg(qce->dev, &rctx->result_sg, 1, DMA_FROM_DEVICE);

 memcpy(rctx->digest, result->auth_iv, digestsize);
 if (req->result)
  memcpy(req->result, result->auth_iv, digestsize);

 rctx->byte_count[0] = cpu_to_be32(result->auth_byte_count[0]);
 rctx->byte_count[1] = cpu_to_be32(result->auth_byte_count[1]);

 error = qce_check_status(qce, &status);
 if (error < 0)
  dev_dbg(qce->dev, "ahash operation error (%x)\n", status);

 req->src = rctx->src_orig;
 req->nbytes = rctx->nbytes_orig;
 rctx->last_blk = 0;
 rctx->first_blk = 0;

 qce->async_req_done(tmpl->qce, error);
}
