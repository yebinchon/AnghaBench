
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chcr_dev {int inflight; int state; } ;
struct uld_ctx {int entry; struct chcr_dev dev; } ;
struct TYPE_2__ {int drv_mutex; struct uld_ctx* last_dev; int act_dev; } ;


 int CHCR_ATTACH ;
 int atomic_set (int *,int ) ;
 TYPE_1__ drv_data ;
 int list_move (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void chcr_dev_add(struct uld_ctx *u_ctx)
{
 struct chcr_dev *dev;

 dev = &u_ctx->dev;
 dev->state = CHCR_ATTACH;
 atomic_set(&dev->inflight, 0);
 mutex_lock(&drv_data.drv_mutex);
 list_move(&u_ctx->entry, &drv_data.act_dev);
 if (!drv_data.last_dev)
  drv_data.last_dev = u_ctx;
 mutex_unlock(&drv_data.drv_mutex);
}
