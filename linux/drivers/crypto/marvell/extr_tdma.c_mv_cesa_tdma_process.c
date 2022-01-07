
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_cesa_tdma_desc {int flags; scalar_t__ cur_dma; struct mv_cesa_tdma_desc* next; } ;
struct TYPE_3__ {int * last; struct mv_cesa_tdma_desc* first; } ;
struct mv_cesa_engine {int lock; struct crypto_async_request* req; TYPE_1__ chain; scalar_t__ regs; } ;
struct mv_cesa_ctx {TYPE_2__* ops; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;int tfm; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int (* process ) (struct crypto_async_request*,int ) ;int (* complete ) (struct crypto_async_request*) ;} ;


 int CESA_SA_INT_ACC0_IDMA_DONE ;
 scalar_t__ CESA_TDMA_CUR ;
 int CESA_TDMA_END_OF_REQ ;
 int EINPROGRESS ;
 struct mv_cesa_ctx* crypto_tfm_ctx (int ) ;
 struct crypto_async_request* mv_cesa_dequeue_req_locked (struct mv_cesa_engine*,struct crypto_async_request**) ;
 int mv_cesa_engine_enqueue_complete_request (struct mv_cesa_engine*,struct crypto_async_request*) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct crypto_async_request*) ;
 int stub3 (struct crypto_async_request*,int ) ;

int mv_cesa_tdma_process(struct mv_cesa_engine *engine, u32 status)
{
 struct crypto_async_request *req = ((void*)0);
 struct mv_cesa_tdma_desc *tdma = ((void*)0), *next = ((void*)0);
 dma_addr_t tdma_cur;
 int res = 0;

 tdma_cur = readl(engine->regs + CESA_TDMA_CUR);

 for (tdma = engine->chain.first; tdma; tdma = next) {
  spin_lock_bh(&engine->lock);
  next = tdma->next;
  spin_unlock_bh(&engine->lock);

  if (tdma->flags & CESA_TDMA_END_OF_REQ) {
   struct crypto_async_request *backlog = ((void*)0);
   struct mv_cesa_ctx *ctx;
   u32 current_status;

   spin_lock_bh(&engine->lock);




   if (!req)
    req = engine->req;
   else
    req = mv_cesa_dequeue_req_locked(engine,
         &backlog);


   engine->chain.first = tdma->next;
   tdma->next = ((void*)0);


   if (engine->chain.first == ((void*)0))
    engine->chain.last = ((void*)0);
   spin_unlock_bh(&engine->lock);

   ctx = crypto_tfm_ctx(req->tfm);
   current_status = (tdma->cur_dma == tdma_cur) ?
       status : CESA_SA_INT_ACC0_IDMA_DONE;
   res = ctx->ops->process(req, current_status);
   ctx->ops->complete(req);

   if (res == 0)
    mv_cesa_engine_enqueue_complete_request(engine,
         req);

   if (backlog)
    backlog->complete(backlog, -EINPROGRESS);
  }

  if (res || tdma->cur_dma == tdma_cur)
   break;
 }



 if (res) {
  spin_lock_bh(&engine->lock);
  engine->req = req;
  spin_unlock_bh(&engine->lock);
 }

 return res;
}
