
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {int dummy; } ;
struct drm_device {struct mcde* dev_private; } ;


 int drm_dev_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kfree (struct mcde*) ;

__attribute__((used)) static void mcde_release(struct drm_device *drm)
{
 struct mcde *mcde = drm->dev_private;

 drm_mode_config_cleanup(drm);
 drm_dev_fini(drm);
 kfree(mcde);
}
