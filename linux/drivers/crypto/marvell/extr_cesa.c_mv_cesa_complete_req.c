
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_ctx {TYPE_1__* ops; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;} ;
struct TYPE_2__ {int (* cleanup ) (struct crypto_async_request*) ;} ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int stub1 (struct crypto_async_request*) ;
 int stub2 (struct crypto_async_request*,int) ;

__attribute__((used)) static inline void
mv_cesa_complete_req(struct mv_cesa_ctx *ctx, struct crypto_async_request *req,
       int res)
{
 ctx->ops->cleanup(req);
 local_bh_disable();
 req->complete(req, res);
 local_bh_enable();
}
