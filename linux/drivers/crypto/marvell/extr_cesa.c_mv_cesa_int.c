
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_cesa_engine {int lock; struct crypto_async_request* req; scalar_t__ regs; } ;
struct mv_cesa_ctx {int dummy; } ;
struct crypto_async_request {int tfm; } ;
typedef int irqreturn_t ;


 scalar_t__ CESA_SA_FPGA_INT_STATUS ;
 scalar_t__ CESA_SA_INT_STATUS ;
 int EINPROGRESS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct mv_cesa_ctx* crypto_tfm_ctx (int ) ;
 int mv_cesa_complete_req (struct mv_cesa_ctx*,struct crypto_async_request*,int) ;
 struct crypto_async_request* mv_cesa_engine_dequeue_complete_request (struct mv_cesa_engine*) ;
 int mv_cesa_get_int_mask (struct mv_cesa_engine*) ;
 int mv_cesa_int_process (struct mv_cesa_engine*,int) ;
 int mv_cesa_rearm_engine (struct mv_cesa_engine*) ;
 int readl (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mv_cesa_int(int irq, void *priv)
{
 struct mv_cesa_engine *engine = priv;
 struct crypto_async_request *req;
 struct mv_cesa_ctx *ctx;
 u32 status, mask;
 irqreturn_t ret = IRQ_NONE;

 while (1) {
  int res;

  mask = mv_cesa_get_int_mask(engine);
  status = readl(engine->regs + CESA_SA_INT_STATUS);

  if (!(status & mask))
   break;





  writel(~status, engine->regs + CESA_SA_FPGA_INT_STATUS);
  writel(~status, engine->regs + CESA_SA_INT_STATUS);


  res = mv_cesa_int_process(engine, status & mask);
  ret = IRQ_HANDLED;

  spin_lock_bh(&engine->lock);
  req = engine->req;
  if (res != -EINPROGRESS)
   engine->req = ((void*)0);
  spin_unlock_bh(&engine->lock);

  ctx = crypto_tfm_ctx(req->tfm);

  if (res && res != -EINPROGRESS)
   mv_cesa_complete_req(ctx, req, res);


  mv_cesa_rearm_engine(engine);


  while (1) {
   req = mv_cesa_engine_dequeue_complete_request(engine);
   if (!req)
    break;

   ctx = crypto_tfm_ctx(req->tfm);
   mv_cesa_complete_req(ctx, req, 0);
  }
 }

 return ret;
}
