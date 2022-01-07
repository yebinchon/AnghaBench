
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uld_ctx {TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ oc_mw_kva; scalar_t__ bar2_kva; } ;
struct TYPE_3__ {int ibdev; TYPE_2__ rdev; int atids; int stids; int hwtids; int wait; int mrs; int qps; int cqs; } ;


 int WARN_ON (int) ;
 int c4iw_rdev_close (TYPE_2__*) ;
 int ib_dealloc_device (int *) ;
 int iounmap (scalar_t__) ;
 int wait_event (int ,int ) ;
 int xa_empty (int *) ;

void c4iw_dealloc(struct uld_ctx *ctx)
{
 c4iw_rdev_close(&ctx->dev->rdev);
 WARN_ON(!xa_empty(&ctx->dev->cqs));
 WARN_ON(!xa_empty(&ctx->dev->qps));
 WARN_ON(!xa_empty(&ctx->dev->mrs));
 wait_event(ctx->dev->wait, xa_empty(&ctx->dev->hwtids));
 WARN_ON(!xa_empty(&ctx->dev->stids));
 WARN_ON(!xa_empty(&ctx->dev->atids));
 if (ctx->dev->rdev.bar2_kva)
  iounmap(ctx->dev->rdev.bar2_kva);
 if (ctx->dev->rdev.oc_mw_kva)
  iounmap(ctx->dev->rdev.oc_mw_kva);
 ib_dealloc_device(&ctx->dev->ibdev);
 ctx->dev = ((void*)0);
}
