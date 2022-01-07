
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int dummy; } ;
struct etnaviv_gpu {int fence_idr; } ;
struct dma_fence {int dummy; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 struct dma_fence* dma_fence_get_rcu (struct dma_fence*) ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait_timeout (struct dma_fence*,int,unsigned long) ;
 unsigned long etnaviv_timeout_to_jiffies (struct timespec*) ;
 struct dma_fence* idr_find (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int etnaviv_gpu_wait_fence_interruptible(struct etnaviv_gpu *gpu,
 u32 id, struct timespec *timeout)
{
 struct dma_fence *fence;
 int ret;






 rcu_read_lock();
 fence = idr_find(&gpu->fence_idr, id);
 if (fence)
  fence = dma_fence_get_rcu(fence);
 rcu_read_unlock();

 if (!fence)
  return 0;

 if (!timeout) {

  ret = dma_fence_is_signaled(fence) ? 0 : -EBUSY;
 } else {
  unsigned long remaining = etnaviv_timeout_to_jiffies(timeout);

  ret = dma_fence_wait_timeout(fence, 1, remaining);
  if (ret == 0)
   ret = -ETIMEDOUT;
  else if (ret != -ERESTARTSYS)
   ret = 0;

 }

 dma_fence_put(fence);
 return ret;
}
