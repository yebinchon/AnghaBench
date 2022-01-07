
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; int max_height; int max_width; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int HDLCD_MAX_XRES ;
 int HDLCD_MAX_YRES ;
 int drm_mode_config_init (struct drm_device*) ;
 int hdlcd_mode_config_funcs ;

__attribute__((used)) static void hdlcd_setup_mode_config(struct drm_device *drm)
{
 drm_mode_config_init(drm);
 drm->mode_config.min_width = 0;
 drm->mode_config.min_height = 0;
 drm->mode_config.max_width = HDLCD_MAX_XRES;
 drm->mode_config.max_height = HDLCD_MAX_YRES;
 drm->mode_config.funcs = &hdlcd_mode_config_funcs;
}
