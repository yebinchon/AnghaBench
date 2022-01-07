
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_fence_driver {int context; int lock; } ;
struct virtio_gpu_fence {int f; struct virtio_gpu_fence_driver* drv; } ;
struct virtio_gpu_device {struct virtio_gpu_fence_driver fence_drv; } ;


 int GFP_KERNEL ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 struct virtio_gpu_fence* kzalloc (int,int ) ;
 int virtio_fence_ops ;

struct virtio_gpu_fence *virtio_gpu_fence_alloc(struct virtio_gpu_device *vgdev)
{
 struct virtio_gpu_fence_driver *drv = &vgdev->fence_drv;
 struct virtio_gpu_fence *fence = kzalloc(sizeof(struct virtio_gpu_fence),
       GFP_KERNEL);
 if (!fence)
  return fence;

 fence->drv = drv;





 dma_fence_init(&fence->f, &virtio_fence_ops, &drv->lock, drv->context, 0);

 return fence;
}
