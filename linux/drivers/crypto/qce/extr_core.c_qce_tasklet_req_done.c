
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int result; int lock; struct crypto_async_request* req; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;


 int qce_handle_queue (struct qce_device*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static void qce_tasklet_req_done(unsigned long data)
{
 struct qce_device *qce = (struct qce_device *)data;
 struct crypto_async_request *req;
 unsigned long flags;

 spin_lock_irqsave(&qce->lock, flags);
 req = qce->req;
 qce->req = ((void*)0);
 spin_unlock_irqrestore(&qce->lock, flags);

 if (req)
  req->complete(req, qce->result);

 qce_handle_queue(qce, ((void*)0));
}
