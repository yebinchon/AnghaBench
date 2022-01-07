
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct ttm_buffer_object {TYPE_1__ base; } ;


 int EBUSY ;
 int HZ ;
 int dma_resv_add_excl_fence (int ,int *) ;
 scalar_t__ dma_resv_test_signaled_rcu (int ,int) ;
 long dma_resv_wait_timeout_rcu (int ,int,int,long) ;

int ttm_bo_wait(struct ttm_buffer_object *bo,
  bool interruptible, bool no_wait)
{
 long timeout = 15 * HZ;

 if (no_wait) {
  if (dma_resv_test_signaled_rcu(bo->base.resv, 1))
   return 0;
  else
   return -EBUSY;
 }

 timeout = dma_resv_wait_timeout_rcu(bo->base.resv, 1,
            interruptible, timeout);
 if (timeout < 0)
  return timeout;

 if (timeout == 0)
  return -EBUSY;

 dma_resv_add_excl_fence(bo->base.resv, ((void*)0));
 return 0;
}
