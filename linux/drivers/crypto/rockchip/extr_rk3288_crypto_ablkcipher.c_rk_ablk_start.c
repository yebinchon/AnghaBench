
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int aligned; int lock; void* dst_nents; int sg_dst; void* src_nents; int first; int sg_src; int total; int left_bytes; int async_req; } ;
struct ablkcipher_request {int dst; int src; int nbytes; } ;


 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 int rk_ablk_hw_init (struct rk_crypto_info*) ;
 int rk_set_data_start (struct rk_crypto_info*) ;
 void* sg_nents (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rk_ablk_start(struct rk_crypto_info *dev)
{
 struct ablkcipher_request *req =
  ablkcipher_request_cast(dev->async_req);
 unsigned long flags;
 int err = 0;

 dev->left_bytes = req->nbytes;
 dev->total = req->nbytes;
 dev->sg_src = req->src;
 dev->first = req->src;
 dev->src_nents = sg_nents(req->src);
 dev->sg_dst = req->dst;
 dev->dst_nents = sg_nents(req->dst);
 dev->aligned = 1;

 spin_lock_irqsave(&dev->lock, flags);
 rk_ablk_hw_init(dev);
 err = rk_set_data_start(dev);
 spin_unlock_irqrestore(&dev->lock, flags);
 return err;
}
