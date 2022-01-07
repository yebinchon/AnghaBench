
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdev; } ;
struct virtio_gpu_device {TYPE_1__ mman; } ;


 int DRM_INFO (char*) ;
 int ttm_bo_device_release (int *) ;

void virtio_gpu_ttm_fini(struct virtio_gpu_device *vgdev)
{
 ttm_bo_device_release(&vgdev->mman.bdev);
 DRM_INFO("virtio_gpu: ttm finalized\n");
}
