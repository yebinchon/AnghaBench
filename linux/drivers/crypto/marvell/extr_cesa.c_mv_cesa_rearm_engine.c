
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_engine {int lock; struct crypto_async_request* req; } ;
struct mv_cesa_ctx {TYPE_1__* ops; } ;
struct crypto_async_request {int tfm; int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct TYPE_2__ {int (* step ) (struct crypto_async_request*) ;} ;


 int EINPROGRESS ;
 struct mv_cesa_ctx* crypto_tfm_ctx (int ) ;
 struct crypto_async_request* mv_cesa_dequeue_req_locked (struct mv_cesa_engine*,struct crypto_async_request**) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct crypto_async_request*) ;

__attribute__((used)) static void mv_cesa_rearm_engine(struct mv_cesa_engine *engine)
{
 struct crypto_async_request *req = ((void*)0), *backlog = ((void*)0);
 struct mv_cesa_ctx *ctx;


 spin_lock_bh(&engine->lock);
 if (!engine->req) {
  req = mv_cesa_dequeue_req_locked(engine, &backlog);
  engine->req = req;
 }
 spin_unlock_bh(&engine->lock);

 if (!req)
  return;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 ctx = crypto_tfm_ctx(req->tfm);
 ctx->ops->step(req);
}
