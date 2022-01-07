
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_tgt_dev {int geo; struct nvm_dev* parent; } ;
struct nvm_rq {int flags; struct nvm_tgt_dev* dev; } ;
struct nvm_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int submit_io; } ;


 int ENODEV ;
 int nvm_rq_tgt_to_dev (struct nvm_tgt_dev*,struct nvm_rq*) ;
 int nvm_set_flags (int *,struct nvm_rq*) ;
 int nvm_submit_io_wait (struct nvm_dev*,struct nvm_rq*,void*) ;

int nvm_submit_io_sync(struct nvm_tgt_dev *tgt_dev, struct nvm_rq *rqd,
         void *buf)
{
 struct nvm_dev *dev = tgt_dev->parent;
 int ret;

 if (!dev->ops->submit_io)
  return -ENODEV;

 nvm_rq_tgt_to_dev(tgt_dev, rqd);

 rqd->dev = tgt_dev;
 rqd->flags = nvm_set_flags(&tgt_dev->geo, rqd);

 ret = nvm_submit_io_wait(dev, rqd, buf);

 return ret;
}
