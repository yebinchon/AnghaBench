
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_private {int hotplug_work; int ddev; } ;


 int drm_irq_uninstall (int *) ;
 int flush_work (int *) ;

void vbox_irq_fini(struct vbox_private *vbox)
{
 drm_irq_uninstall(&vbox->ddev);
 flush_work(&vbox->hotplug_work);
}
