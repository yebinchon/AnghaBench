
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_mode_config_cleanup (struct drm_device*) ;

__attribute__((used)) static void malidp_fini(struct drm_device *drm)
{
 drm_mode_config_cleanup(drm);
}
