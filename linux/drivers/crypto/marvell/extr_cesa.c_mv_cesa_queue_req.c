
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_req {struct mv_cesa_engine* engine; } ;
struct mv_cesa_engine {int lock; int queue; } ;
struct crypto_async_request {int dummy; } ;


 scalar_t__ CESA_DMA_REQ ;
 int EBUSY ;
 int EINPROGRESS ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 int mv_cesa_rearm_engine (struct mv_cesa_engine*) ;
 scalar_t__ mv_cesa_req_get_type (struct mv_cesa_req*) ;
 int mv_cesa_tdma_chain (struct mv_cesa_engine*,struct mv_cesa_req*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mv_cesa_queue_req(struct crypto_async_request *req,
        struct mv_cesa_req *creq)
{
 int ret;
 struct mv_cesa_engine *engine = creq->engine;

 spin_lock_bh(&engine->lock);
 ret = crypto_enqueue_request(&engine->queue, req);
 if ((mv_cesa_req_get_type(creq) == CESA_DMA_REQ) &&
     (ret == -EINPROGRESS || ret == -EBUSY))
  mv_cesa_tdma_chain(engine, creq);
 spin_unlock_bh(&engine->lock);

 if (ret != -EINPROGRESS)
  return ret;

 mv_cesa_rearm_engine(engine);

 return -EINPROGRESS;
}
