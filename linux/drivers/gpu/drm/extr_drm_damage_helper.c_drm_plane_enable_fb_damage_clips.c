
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int base; struct drm_device* dev; } ;
struct drm_mode_config {int prop_fb_damage_clips; } ;
struct drm_device {struct drm_mode_config mode_config; } ;


 int drm_object_attach_property (int *,int ,int ) ;

void drm_plane_enable_fb_damage_clips(struct drm_plane *plane)
{
 struct drm_device *dev = plane->dev;
 struct drm_mode_config *config = &dev->mode_config;

 drm_object_attach_property(&plane->base, config->prop_fb_damage_clips,
       0);
}
