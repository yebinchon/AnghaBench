
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_obj {int base; } ;


 int EBUSY ;
 long dma_fence_wait_timeout (int *,int,unsigned long) ;
 scalar_t__ likely (int) ;

int vmw_fence_obj_wait(struct vmw_fence_obj *fence, bool lazy,
         bool interruptible, unsigned long timeout)
{
 long ret = dma_fence_wait_timeout(&fence->base, interruptible, timeout);

 if (likely(ret > 0))
  return 0;
 else if (ret == 0)
  return -EBUSY;
 else
  return ret;
}
