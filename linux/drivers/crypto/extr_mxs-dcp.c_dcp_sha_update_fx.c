
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcp_sha_req_ctx {int fini; int init; } ;
struct dcp_async_ctx {int hot; size_t chan; int mutex; } ;
struct dcp {int * thread; int * lock; int * queue; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int base; int nbytes; } ;


 struct dcp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct dcp_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_enqueue_request (int *,int *) ;
 struct dcp* global_sdcp ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int dcp_sha_update_fx(struct ahash_request *req, int fini)
{
 struct dcp *sdcp = global_sdcp;

 struct dcp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct dcp_async_ctx *actx = crypto_ahash_ctx(tfm);

 int ret;





 if (!req->nbytes && !fini)
  return 0;

 mutex_lock(&actx->mutex);

 rctx->fini = fini;

 if (!actx->hot) {
  actx->hot = 1;
  rctx->init = 1;
 }

 spin_lock(&sdcp->lock[actx->chan]);
 ret = crypto_enqueue_request(&sdcp->queue[actx->chan], &req->base);
 spin_unlock(&sdcp->lock[actx->chan]);

 wake_up_process(sdcp->thread[actx->chan]);
 mutex_unlock(&actx->mutex);

 return ret;
}
