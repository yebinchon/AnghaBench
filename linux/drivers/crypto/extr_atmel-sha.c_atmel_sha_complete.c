
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_sha_dev {int flags; int queue_task; scalar_t__ force_complete; scalar_t__ is_async; int iclk; struct ahash_request* req; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;


 int SHA_FLAGS_BUSY ;
 int SHA_FLAGS_CPU ;
 int SHA_FLAGS_DMA_READY ;
 int SHA_FLAGS_DUMP_REG ;
 int SHA_FLAGS_FINAL ;
 int SHA_FLAGS_OUTPUT_READY ;
 int clk_disable (int ) ;
 int stub1 (TYPE_1__*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static inline int atmel_sha_complete(struct atmel_sha_dev *dd, int err)
{
 struct ahash_request *req = dd->req;

 dd->flags &= ~(SHA_FLAGS_BUSY | SHA_FLAGS_FINAL | SHA_FLAGS_CPU |
         SHA_FLAGS_DMA_READY | SHA_FLAGS_OUTPUT_READY |
         SHA_FLAGS_DUMP_REG);

 clk_disable(dd->iclk);

 if ((dd->is_async || dd->force_complete) && req->base.complete)
  req->base.complete(&req->base, err);


 tasklet_schedule(&dd->queue_task);

 return err;
}
