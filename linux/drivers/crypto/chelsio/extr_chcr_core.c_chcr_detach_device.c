
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chcr_dev {scalar_t__ state; int detach_comp; int detach_work; int inflight; } ;
struct uld_ctx {struct chcr_dev dev; } ;


 scalar_t__ CHCR_DETACH ;
 int WQ_DETACH_TM ;
 scalar_t__ atomic_read (int *) ;
 int chcr_dev_move (struct uld_ctx*) ;
 int pr_debug (char*) ;
 int schedule_delayed_work (int *,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void chcr_detach_device(struct uld_ctx *u_ctx)
{
 struct chcr_dev *dev = &u_ctx->dev;

 if (dev->state == CHCR_DETACH) {
  pr_debug("Detached Event received for already detach device\n");
  return;
 }
 dev->state = CHCR_DETACH;
 if (atomic_read(&dev->inflight) != 0) {
  schedule_delayed_work(&dev->detach_work, WQ_DETACH_TM);
  wait_for_completion(&dev->detach_comp);
 }


 chcr_dev_move(u_ctx);
}
