
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_depth; int * helper_private; int max_height; int max_width; int min_height; int min_width; int * funcs; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct vkms_device {struct drm_device drm; } ;


 int XRES_MAX ;
 int XRES_MIN ;
 int YRES_MAX ;
 int YRES_MIN ;
 int drm_mode_config_init (struct drm_device*) ;
 int vkms_mode_config_helpers ;
 int vkms_mode_funcs ;
 int vkms_output_init (struct vkms_device*,int ) ;

__attribute__((used)) static int vkms_modeset_init(struct vkms_device *vkmsdev)
{
 struct drm_device *dev = &vkmsdev->drm;

 drm_mode_config_init(dev);
 dev->mode_config.funcs = &vkms_mode_funcs;
 dev->mode_config.min_width = XRES_MIN;
 dev->mode_config.min_height = YRES_MIN;
 dev->mode_config.max_width = XRES_MAX;
 dev->mode_config.max_height = YRES_MAX;
 dev->mode_config.preferred_depth = 24;
 dev->mode_config.helper_private = &vkms_mode_config_helpers;

 return vkms_output_init(vkmsdev, 0);
}
