
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {scalar_t__ err; int async_req; int (* complete ) (int ,scalar_t__) ;scalar_t__ (* update ) (struct rk_crypto_info*) ;} ;


 int stub1 (int ,scalar_t__) ;
 scalar_t__ stub2 (struct rk_crypto_info*) ;
 int stub3 (int ,scalar_t__) ;

__attribute__((used)) static void rk_crypto_done_task_cb(unsigned long data)
{
 struct rk_crypto_info *dev = (struct rk_crypto_info *)data;

 if (dev->err) {
  dev->complete(dev->async_req, dev->err);
  return;
 }

 dev->err = dev->update(dev);
 if (dev->err)
  dev->complete(dev->async_req, dev->err);
}
