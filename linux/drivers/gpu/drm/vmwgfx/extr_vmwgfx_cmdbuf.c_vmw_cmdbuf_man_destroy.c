
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_cmdbuf_man {int error_mutex; int space_mutex; int cur_mutex; int headers; int dheaders; int work; TYPE_1__* dev_priv; int has_pool; } ;
struct TYPE_2__ {int error_waiters; } ;


 int DRM_ERROR (char*) ;
 int HZ ;
 int SVGA_IRQFLAG_ERROR ;
 int WARN_ON_ONCE (int ) ;
 int cancel_work_sync (int *) ;
 int dma_pool_destroy (int ) ;
 int kfree (struct vmw_cmdbuf_man*) ;
 int mutex_destroy (int *) ;
 int vmw_cmdbuf_idle (struct vmw_cmdbuf_man*,int,int) ;
 scalar_t__ vmw_cmdbuf_startstop (struct vmw_cmdbuf_man*,int ,int) ;
 int vmw_generic_waiter_remove (TYPE_1__*,int ,int *) ;

void vmw_cmdbuf_man_destroy(struct vmw_cmdbuf_man *man)
{
 WARN_ON_ONCE(man->has_pool);
 (void) vmw_cmdbuf_idle(man, 0, 10*HZ);

 if (vmw_cmdbuf_startstop(man, 0, 0))
  DRM_ERROR("Failed stopping command buffer contexts.\n");

 vmw_generic_waiter_remove(man->dev_priv, SVGA_IRQFLAG_ERROR,
      &man->dev_priv->error_waiters);
 (void) cancel_work_sync(&man->work);
 dma_pool_destroy(man->dheaders);
 dma_pool_destroy(man->headers);
 mutex_destroy(&man->cur_mutex);
 mutex_destroy(&man->space_mutex);
 mutex_destroy(&man->error_mutex);
 kfree(man);
}
