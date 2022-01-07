
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chcr_dev {int inflight; int wqretry; int state; int detach_comp; int detach_work; int lock_chcr_dev; } ;
struct uld_ctx {int entry; struct chcr_dev dev; } ;
struct TYPE_2__ {int drv_mutex; struct uld_ctx* last_dev; int inact_dev; int dev_count; } ;


 int CHCR_INIT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WQ_RETRY ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int detach_work_fn ;
 TYPE_1__ drv_data ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void chcr_dev_init(struct uld_ctx *u_ctx)
{
 struct chcr_dev *dev;

 dev = &u_ctx->dev;
 spin_lock_init(&dev->lock_chcr_dev);
 INIT_DELAYED_WORK(&dev->detach_work, detach_work_fn);
 init_completion(&dev->detach_comp);
 dev->state = CHCR_INIT;
 dev->wqretry = WQ_RETRY;
 atomic_inc(&drv_data.dev_count);
 atomic_set(&dev->inflight, 0);
 mutex_lock(&drv_data.drv_mutex);
 list_add_tail(&u_ctx->entry, &drv_data.inact_dev);
 if (!drv_data.last_dev)
  drv_data.last_dev = u_ctx;
 mutex_unlock(&drv_data.drv_mutex);
}
