
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_private {int ddev; } ;


 int drm_mode_config_cleanup (int *) ;

void vbox_mode_fini(struct vbox_private *vbox)
{
 drm_mode_config_cleanup(&vbox->ddev);
}
