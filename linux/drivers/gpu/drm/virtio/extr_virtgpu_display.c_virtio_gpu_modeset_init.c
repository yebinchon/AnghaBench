
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_gpu_device {int num_scanouts; TYPE_2__* ddev; } ;
struct TYPE_4__ {int quirk_addfb_prefer_host_byte_order; int max_height; int max_width; int min_height; int min_width; int * helper_private; int * funcs; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;


 int XRES_MAX ;
 int XRES_MIN ;
 int YRES_MAX ;
 int YRES_MIN ;
 int drm_mode_config_init (TYPE_2__*) ;
 int drm_mode_config_reset (TYPE_2__*) ;
 int vgdev_output_init (struct virtio_gpu_device*,int) ;
 int virtio_gpu_mode_funcs ;
 int virtio_mode_config_helpers ;

void virtio_gpu_modeset_init(struct virtio_gpu_device *vgdev)
{
 int i;

 drm_mode_config_init(vgdev->ddev);
 vgdev->ddev->mode_config.quirk_addfb_prefer_host_byte_order = 1;
 vgdev->ddev->mode_config.funcs = &virtio_gpu_mode_funcs;
 vgdev->ddev->mode_config.helper_private = &virtio_mode_config_helpers;


 vgdev->ddev->mode_config.min_width = XRES_MIN;
 vgdev->ddev->mode_config.min_height = YRES_MIN;
 vgdev->ddev->mode_config.max_width = XRES_MAX;
 vgdev->ddev->mode_config.max_height = YRES_MAX;

 for (i = 0 ; i < vgdev->num_scanouts; ++i)
  vgdev_output_init(vgdev, i);

 drm_mode_config_reset(vgdev->ddev);
}
