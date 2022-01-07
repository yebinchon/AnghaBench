
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_rq {int flags; int * dev; } ;
struct nvm_dev {int geo; TYPE_1__* ops; } ;
struct TYPE_2__ {int submit_io; } ;


 int ENODEV ;
 int nvm_set_flags (int *,struct nvm_rq*) ;
 int nvm_submit_io_wait (struct nvm_dev*,struct nvm_rq*,int *) ;

__attribute__((used)) static int nvm_submit_io_sync_raw(struct nvm_dev *dev, struct nvm_rq *rqd)
{
 if (!dev->ops->submit_io)
  return -ENODEV;

 rqd->dev = ((void*)0);
 rqd->flags = nvm_set_flags(&dev->geo, rqd);

 return nvm_submit_io_wait(dev, rqd, ((void*)0));
}
