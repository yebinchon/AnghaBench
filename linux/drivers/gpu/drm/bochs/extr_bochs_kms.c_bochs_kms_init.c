
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bochs_device {TYPE_2__* dev; int connector; int pipe; int fb_base; } ;
struct TYPE_6__ {int max_width; int max_height; int preferred_depth; int prefer_shadow_fbdev; int quirk_addfb_prefer_host_byte_order; int * funcs; scalar_t__ prefer_shadow; int fb_base; } ;
struct TYPE_7__ {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int bochs_connector_init (TYPE_2__*) ;
 int bochs_formats ;
 int bochs_mode_funcs ;
 int bochs_pipe_funcs ;
 int drm_mode_config_init (TYPE_2__*) ;
 int drm_mode_config_reset (TYPE_2__*) ;
 int drm_simple_display_pipe_init (TYPE_2__*,int *,int *,int ,int ,int *,int *) ;

int bochs_kms_init(struct bochs_device *bochs)
{
 drm_mode_config_init(bochs->dev);

 bochs->dev->mode_config.max_width = 8192;
 bochs->dev->mode_config.max_height = 8192;

 bochs->dev->mode_config.fb_base = bochs->fb_base;
 bochs->dev->mode_config.preferred_depth = 24;
 bochs->dev->mode_config.prefer_shadow = 0;
 bochs->dev->mode_config.prefer_shadow_fbdev = 1;
 bochs->dev->mode_config.quirk_addfb_prefer_host_byte_order = 1;

 bochs->dev->mode_config.funcs = &bochs_mode_funcs;

 bochs_connector_init(bochs->dev);
 drm_simple_display_pipe_init(bochs->dev,
         &bochs->pipe,
         &bochs_pipe_funcs,
         bochs_formats,
         ARRAY_SIZE(bochs_formats),
         ((void*)0),
         &bochs->connector);

 drm_mode_config_reset(bochs->dev);

 return 0;
}
