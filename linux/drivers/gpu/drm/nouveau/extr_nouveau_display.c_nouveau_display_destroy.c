
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_display {int disp; int (* dtor ) (struct drm_device*) ;} ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int * display; int acpi_nb; } ;


 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kfree (struct nouveau_display*) ;
 struct nouveau_display* nouveau_display (struct drm_device*) ;
 int nouveau_display_vblank_fini (struct drm_device*) ;
 TYPE_1__* nouveau_drm (struct drm_device*) ;
 int nvif_disp_dtor (int *) ;
 int stub1 (struct drm_device*) ;
 int unregister_acpi_notifier (int *) ;

void
nouveau_display_destroy(struct drm_device *dev)
{
 struct nouveau_display *disp = nouveau_display(dev);




 nouveau_display_vblank_fini(dev);

 drm_kms_helper_poll_fini(dev);
 drm_mode_config_cleanup(dev);

 if (disp->dtor)
  disp->dtor(dev);

 nvif_disp_dtor(&disp->disp);

 nouveau_drm(dev)->display = ((void*)0);
 kfree(disp);
}
