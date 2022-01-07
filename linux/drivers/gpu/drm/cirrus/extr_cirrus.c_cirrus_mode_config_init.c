
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_width; int max_height; int preferred_depth; int * funcs; scalar_t__ prefer_shadow; scalar_t__ min_height; scalar_t__ min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct cirrus_device {struct drm_device dev; } ;


 int CIRRUS_MAX_PITCH ;
 int cirrus_mode_config_funcs ;
 int drm_mode_config_init (struct drm_device*) ;

__attribute__((used)) static void cirrus_mode_config_init(struct cirrus_device *cirrus)
{
 struct drm_device *dev = &cirrus->dev;

 drm_mode_config_init(dev);
 dev->mode_config.min_width = 0;
 dev->mode_config.min_height = 0;
 dev->mode_config.max_width = CIRRUS_MAX_PITCH / 2;
 dev->mode_config.max_height = 1024;
 dev->mode_config.preferred_depth = 16;
 dev->mode_config.prefer_shadow = 0;
 dev->mode_config.funcs = &cirrus_mode_config_funcs;
}
