
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_cesa_engine {struct crypto_async_request* req; } ;
struct mv_cesa_ctx {TYPE_1__* ops; } ;
struct crypto_async_request {int tfm; } ;
struct TYPE_2__ {int (* process ) (struct crypto_async_request*,int ) ;int (* step ) (struct crypto_async_request*) ;int (* complete ) (struct crypto_async_request*) ;} ;


 int EINPROGRESS ;
 struct mv_cesa_ctx* crypto_tfm_ctx (int ) ;
 int mv_cesa_engine_enqueue_complete_request (struct mv_cesa_engine*,struct crypto_async_request*) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct crypto_async_request*) ;
 int stub3 (struct crypto_async_request*) ;

__attribute__((used)) static int mv_cesa_std_process(struct mv_cesa_engine *engine, u32 status)
{
 struct crypto_async_request *req;
 struct mv_cesa_ctx *ctx;
 int res;

 req = engine->req;
 ctx = crypto_tfm_ctx(req->tfm);
 res = ctx->ops->process(req, status);

 if (res == 0) {
  ctx->ops->complete(req);
  mv_cesa_engine_enqueue_complete_request(engine, req);
 } else if (res == -EINPROGRESS) {
  ctx->ops->step(req);
 }

 return res;
}
