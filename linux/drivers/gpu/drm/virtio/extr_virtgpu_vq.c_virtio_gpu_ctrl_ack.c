
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct TYPE_4__ {int dequeue_work; } ;
struct virtio_gpu_device {TYPE_2__ ctrlq; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_3__ {struct drm_device* priv; } ;


 int schedule_work (int *) ;

void virtio_gpu_ctrl_ack(struct virtqueue *vq)
{
 struct drm_device *dev = vq->vdev->priv;
 struct virtio_gpu_device *vgdev = dev->dev_private;

 schedule_work(&vgdev->ctrlq.dequeue_work);
}
