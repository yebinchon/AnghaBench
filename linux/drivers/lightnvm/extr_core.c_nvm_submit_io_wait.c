
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvm_rq {int * private; int end_io; } ;
struct nvm_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* submit_io ) (struct nvm_dev*,struct nvm_rq*,void*) ;} ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int nvm_sync_end_io ;
 int stub1 (struct nvm_dev*,struct nvm_rq*,void*) ;
 int wait ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static int nvm_submit_io_wait(struct nvm_dev *dev, struct nvm_rq *rqd,
         void *buf)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 int ret = 0;

 rqd->end_io = nvm_sync_end_io;
 rqd->private = &wait;

 ret = dev->ops->submit_io(dev, rqd, buf);
 if (ret)
  return ret;

 wait_for_completion_io(&wait);

 return 0;
}
