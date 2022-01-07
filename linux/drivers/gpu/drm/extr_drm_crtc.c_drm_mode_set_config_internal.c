
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_set {TYPE_1__* crtc; } ;
struct TYPE_2__ {int dev; } ;


 int WARN_ON (int ) ;
 int __drm_mode_set_config_internal (struct drm_mode_set*,int *) ;
 int drm_drv_uses_atomic_modeset (int ) ;

int drm_mode_set_config_internal(struct drm_mode_set *set)
{
 WARN_ON(drm_drv_uses_atomic_modeset(set->crtc->dev));

 return __drm_mode_set_config_internal(set, ((void*)0));
}
