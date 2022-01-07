
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int bdev; } ;
struct virtio_gpu_device {TYPE_3__ mman; TYPE_2__* ddev; } ;
struct TYPE_5__ {TYPE_1__* anon_inode; } ;
struct TYPE_4__ {int i_mapping; } ;


 int DRM_ERROR (char*,...) ;
 int TTM_PL_TT ;
 int ttm_bo_device_init (int *,int *,int ,int) ;
 int ttm_bo_device_release (int *) ;
 int ttm_bo_init_mm (int *,int ,int ) ;
 int virtio_gpu_bo_driver ;

int virtio_gpu_ttm_init(struct virtio_gpu_device *vgdev)
{
 int r;


 r = ttm_bo_device_init(&vgdev->mman.bdev,
          &virtio_gpu_bo_driver,
          vgdev->ddev->anon_inode->i_mapping,
          0);
 if (r) {
  DRM_ERROR("failed initializing buffer object driver(%d).\n", r);
  goto err_dev_init;
 }

 r = ttm_bo_init_mm(&vgdev->mman.bdev, TTM_PL_TT, 0);
 if (r) {
  DRM_ERROR("Failed initializing GTT heap.\n");
  goto err_mm_init;
 }
 return 0;

err_mm_init:
 ttm_bo_device_release(&vgdev->mman.bdev);
err_dev_init:
 return r;
}
