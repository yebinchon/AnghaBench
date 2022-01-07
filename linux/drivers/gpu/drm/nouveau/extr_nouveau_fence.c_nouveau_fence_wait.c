
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int base; } ;


 int EBUSY ;
 int HZ ;
 long dma_fence_wait_timeout (int *,int,int) ;
 int nouveau_fence_wait_busy (struct nouveau_fence*,int) ;

int
nouveau_fence_wait(struct nouveau_fence *fence, bool lazy, bool intr)
{
 long ret;

 if (!lazy)
  return nouveau_fence_wait_busy(fence, intr);

 ret = dma_fence_wait_timeout(&fence->base, intr, 15 * HZ);
 if (ret < 0)
  return ret;
 else if (!ret)
  return -EBUSY;
 else
  return 0;
}
