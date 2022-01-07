
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pdev; } ;
struct uld_ctx {TYPE_4__ lldi; TYPE_3__* dev; } ;
typedef enum cxgb4_control { ____Placeholder_cxgb4_control } cxgb4_control ;
struct TYPE_5__ {int lock; int db_drop; int db_empty; int db_full; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_7__ {TYPE_2__ rdev; } ;





 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_name (int ) ;
 int pr_warn (char*,int ,int) ;
 int recover_queues (struct uld_ctx*) ;
 int resume_queues (struct uld_ctx*) ;
 int stop_queues (struct uld_ctx*) ;

__attribute__((used)) static int c4iw_uld_control(void *handle, enum cxgb4_control control, ...)
{
 struct uld_ctx *ctx = handle;

 switch (control) {
 case 128:
  stop_queues(ctx);
  ctx->dev->rdev.stats.db_full++;
  break;
 case 129:
  resume_queues(ctx);
  mutex_lock(&ctx->dev->rdev.stats.lock);
  ctx->dev->rdev.stats.db_empty++;
  mutex_unlock(&ctx->dev->rdev.stats.lock);
  break;
 case 130:
  recover_queues(ctx);
  mutex_lock(&ctx->dev->rdev.stats.lock);
  ctx->dev->rdev.stats.db_drop++;
  mutex_unlock(&ctx->dev->rdev.stats.lock);
  break;
 default:
  pr_warn("%s: unknown control cmd %u\n",
   pci_name(ctx->lldi.pdev), control);
  break;
 }
 return 0;
}
