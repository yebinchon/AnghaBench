
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dequeue_work; } ;
struct TYPE_6__ {int dequeue_work; } ;
struct virtio_gpu_device {int vqs_ready; struct virtio_gpu_device* capsets; TYPE_4__* vdev; int config_changed_work; TYPE_2__ cursorq; TYPE_1__ ctrlq; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_9__ {TYPE_3__* config; } ;
struct TYPE_8__ {int (* del_vqs ) (TYPE_4__*) ;int (* reset ) (TYPE_4__*) ;} ;


 int flush_work (int *) ;
 int kfree (struct virtio_gpu_device*) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*) ;
 int virtio_gpu_cleanup_cap_cache (struct virtio_gpu_device*) ;
 int virtio_gpu_free_vbufs (struct virtio_gpu_device*) ;
 int virtio_gpu_modeset_fini (struct virtio_gpu_device*) ;
 int virtio_gpu_ttm_fini (struct virtio_gpu_device*) ;

void virtio_gpu_deinit(struct drm_device *dev)
{
 struct virtio_gpu_device *vgdev = dev->dev_private;

 vgdev->vqs_ready = 0;
 flush_work(&vgdev->ctrlq.dequeue_work);
 flush_work(&vgdev->cursorq.dequeue_work);
 flush_work(&vgdev->config_changed_work);
 vgdev->vdev->config->reset(vgdev->vdev);
 vgdev->vdev->config->del_vqs(vgdev->vdev);

 virtio_gpu_modeset_fini(vgdev);
 virtio_gpu_ttm_fini(vgdev);
 virtio_gpu_free_vbufs(vgdev);
 virtio_gpu_cleanup_cap_cache(vgdev);
 kfree(vgdev->capsets);
 kfree(vgdev);
}
