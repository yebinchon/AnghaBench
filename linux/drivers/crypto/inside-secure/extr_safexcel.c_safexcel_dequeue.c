
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rd_offset; int cd_offset; } ;
struct safexcel_crypto_priv {TYPE_2__ config; TYPE_1__* ring; } ;
struct safexcel_context {int (* send ) (struct crypto_async_request*,int,int*,int*) ;} ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;int tfm; } ;
struct TYPE_3__ {int requests; int busy; int lock; struct crypto_async_request* backlog; struct crypto_async_request* req; int queue_lock; int queue; } ;


 int EINPROGRESS ;
 scalar_t__ EIP197_HIA_CDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_RDR (struct safexcel_crypto_priv*,int) ;
 scalar_t__ EIP197_HIA_xDR_PREP_COUNT ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 struct safexcel_context* crypto_tfm_ctx (int ) ;
 int safexcel_try_push_requests (struct safexcel_crypto_priv*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct crypto_async_request*,int,int*,int*) ;
 int stub2 (struct crypto_async_request*,int ) ;
 int writel (int,scalar_t__) ;

void safexcel_dequeue(struct safexcel_crypto_priv *priv, int ring)
{
 struct crypto_async_request *req, *backlog;
 struct safexcel_context *ctx;
 int ret, nreq = 0, cdesc = 0, rdesc = 0, commands, results;




 req = priv->ring[ring].req;
 backlog = priv->ring[ring].backlog;
 if (req)
  goto handle_req;

 while (1) {
  spin_lock_bh(&priv->ring[ring].queue_lock);
  backlog = crypto_get_backlog(&priv->ring[ring].queue);
  req = crypto_dequeue_request(&priv->ring[ring].queue);
  spin_unlock_bh(&priv->ring[ring].queue_lock);

  if (!req) {
   priv->ring[ring].req = ((void*)0);
   priv->ring[ring].backlog = ((void*)0);
   goto finalize;
  }

handle_req:
  ctx = crypto_tfm_ctx(req->tfm);
  ret = ctx->send(req, ring, &commands, &results);
  if (ret)
   goto request_failed;

  if (backlog)
   backlog->complete(backlog, -EINPROGRESS);





  if (!commands && !results)
   continue;

  cdesc += commands;
  rdesc += results;
  nreq++;
 }

request_failed:



 priv->ring[ring].req = req;
 priv->ring[ring].backlog = backlog;

finalize:
 if (!nreq)
  return;

 spin_lock_bh(&priv->ring[ring].lock);

 priv->ring[ring].requests += nreq;

 if (!priv->ring[ring].busy) {
  safexcel_try_push_requests(priv, ring);
  priv->ring[ring].busy = 1;
 }

 spin_unlock_bh(&priv->ring[ring].lock);


 writel((rdesc * priv->config.rd_offset) << 2,
        EIP197_HIA_RDR(priv, ring) + EIP197_HIA_xDR_PREP_COUNT);


 writel((cdesc * priv->config.cd_offset) << 2,
        EIP197_HIA_CDR(priv, ring) + EIP197_HIA_xDR_PREP_COUNT);
}
