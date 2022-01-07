
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct virtio_gpu_fence {TYPE_1__* drv; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int last_seq; } ;


 scalar_t__ atomic64_read (int *) ;
 int snprintf (char*,int,char*,int ) ;
 struct virtio_gpu_fence* to_virtio_fence (struct dma_fence*) ;

__attribute__((used)) static void virtio_timeline_value_str(struct dma_fence *f, char *str, int size)
{
 struct virtio_gpu_fence *fence = to_virtio_fence(f);

 snprintf(str, size, "%llu", (u64)atomic64_read(&fence->drv->last_seq));
}
