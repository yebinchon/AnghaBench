
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int max_width; int max_height; int fb_base; scalar_t__ min_height; scalar_t__ min_width; void* funcs; } ;
struct TYPE_8__ {TYPE_1__ mode_config; } ;
struct qxl_device {TYPE_2__ ddev; int vram_base; } ;


 int drm_mode_config_init (TYPE_2__*) ;
 int drm_mode_config_reset (TYPE_2__*) ;
 int drm_mode_create_suggested_offset_properties (TYPE_2__*) ;
 int qdev_crtc_init (TYPE_2__*,int) ;
 int qdev_output_init (TYPE_2__*,int) ;
 int qxl_create_monitors_object (struct qxl_device*) ;
 int qxl_display_read_client_monitors_config (struct qxl_device*) ;
 int qxl_mode_create_hotplug_mode_update_property (struct qxl_device*) ;
 int qxl_mode_funcs ;
 int qxl_num_crtc ;

int qxl_modeset_init(struct qxl_device *qdev)
{
 int i;
 int ret;

 drm_mode_config_init(&qdev->ddev);

 ret = qxl_create_monitors_object(qdev);
 if (ret)
  return ret;

 qdev->ddev.mode_config.funcs = (void *)&qxl_mode_funcs;


 qdev->ddev.mode_config.min_width = 0;
 qdev->ddev.mode_config.min_height = 0;
 qdev->ddev.mode_config.max_width = 8192;
 qdev->ddev.mode_config.max_height = 8192;

 qdev->ddev.mode_config.fb_base = qdev->vram_base;

 drm_mode_create_suggested_offset_properties(&qdev->ddev);
 qxl_mode_create_hotplug_mode_update_property(qdev);

 for (i = 0 ; i < qxl_num_crtc; ++i) {
  qdev_crtc_init(&qdev->ddev, i);
  qdev_output_init(&qdev->ddev, i);
 }

 qxl_display_read_client_monitors_config(qdev);

 drm_mode_config_reset(&qdev->ddev);
 return 0;
}
