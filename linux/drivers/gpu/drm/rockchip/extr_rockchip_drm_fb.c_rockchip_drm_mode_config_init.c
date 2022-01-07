
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_width; int max_height; int * helper_private; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int rockchip_drm_mode_config_funcs ;
 int rockchip_mode_config_helpers ;

void rockchip_drm_mode_config_init(struct drm_device *dev)
{
 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;






 dev->mode_config.max_width = 4096;
 dev->mode_config.max_height = 4096;

 dev->mode_config.funcs = &rockchip_drm_mode_config_funcs;
 dev->mode_config.helper_private = &rockchip_mode_config_helpers;
}
