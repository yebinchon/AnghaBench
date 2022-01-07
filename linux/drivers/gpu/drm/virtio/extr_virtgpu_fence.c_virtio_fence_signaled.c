
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ seqno; } ;
struct virtio_gpu_fence {TYPE_2__ f; TYPE_1__* drv; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int last_seq; } ;


 scalar_t__ atomic64_read (int *) ;
 struct virtio_gpu_fence* to_virtio_fence (struct dma_fence*) ;

bool virtio_fence_signaled(struct dma_fence *f)
{
 struct virtio_gpu_fence *fence = to_virtio_fence(f);

 if (atomic64_read(&fence->drv->last_seq) >= fence->f.seqno)
  return 1;
 return 0;
}
