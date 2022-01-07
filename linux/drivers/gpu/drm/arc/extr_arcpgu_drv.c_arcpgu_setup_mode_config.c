
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_width; int max_height; int * funcs; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int arcpgu_drm_modecfg_funcs ;
 int drm_mode_config_init (struct drm_device*) ;

__attribute__((used)) static void arcpgu_setup_mode_config(struct drm_device *drm)
{
 drm_mode_config_init(drm);
 drm->mode_config.min_width = 0;
 drm->mode_config.min_height = 0;
 drm->mode_config.max_width = 1920;
 drm->mode_config.max_height = 1080;
 drm->mode_config.funcs = &arcpgu_drm_modecfg_funcs;
}
