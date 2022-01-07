
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sync_fence_info {int status; int timestamp_ns; int driver_name; int obj_name; } ;
struct dma_fence {int timestamp; int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_driver_name ) (struct dma_fence*) ;int (* get_timeline_name ) (struct dma_fence*) ;} ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int DMA_FENCE_FLAG_TIMESTAMP_BIT ;
 int cpu_relax () ;
 int dma_fence_get_status (struct dma_fence*) ;
 int ktime_set (int ,int ) ;
 int ktime_to_ns (int ) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct dma_fence*) ;
 int stub2 (struct dma_fence*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int sync_fill_fence_info(struct dma_fence *fence,
     struct sync_fence_info *info)
{
 strlcpy(info->obj_name, fence->ops->get_timeline_name(fence),
  sizeof(info->obj_name));
 strlcpy(info->driver_name, fence->ops->get_driver_name(fence),
  sizeof(info->driver_name));

 info->status = dma_fence_get_status(fence);
 while (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) &&
        !test_bit(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags))
  cpu_relax();
 info->timestamp_ns =
  test_bit(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags) ?
  ktime_to_ns(fence->timestamp) :
  ktime_set(0, 0);

 return info->status;
}
