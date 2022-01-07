
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int normalize_zpos; int * funcs; int max_height; int max_width; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int STI_MAX_FB_HEIGHT ;
 int STI_MAX_FB_WIDTH ;
 int sti_mode_config_funcs ;

__attribute__((used)) static void sti_mode_config_init(struct drm_device *dev)
{
 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;






 dev->mode_config.max_width = STI_MAX_FB_WIDTH;
 dev->mode_config.max_height = STI_MAX_FB_HEIGHT;

 dev->mode_config.funcs = &sti_mode_config_funcs;

 dev->mode_config.normalize_zpos = 1;
}
