
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_width; int max_height; int * helper_private; int * funcs; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_config_reset (struct drm_device*) ;
 int sun4i_de_mode_config_funcs ;
 int sun4i_de_mode_config_helpers ;

void sun4i_framebuffer_init(struct drm_device *drm)
{
 drm_mode_config_reset(drm);

 drm->mode_config.max_width = 8192;
 drm->mode_config.max_height = 8192;

 drm->mode_config.funcs = &sun4i_de_mode_config_funcs;
 drm->mode_config.helper_private = &sun4i_de_mode_config_helpers;
}
