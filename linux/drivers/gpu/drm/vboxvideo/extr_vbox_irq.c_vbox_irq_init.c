
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct vbox_private {TYPE_2__ ddev; int hotplug_work; } ;
struct TYPE_3__ {int irq; } ;


 int INIT_WORK (int *,int ) ;
 int drm_irq_install (TYPE_2__*,int ) ;
 int vbox_hotplug_worker ;
 int vbox_update_mode_hints (struct vbox_private*) ;

int vbox_irq_init(struct vbox_private *vbox)
{
 INIT_WORK(&vbox->hotplug_work, vbox_hotplug_worker);
 vbox_update_mode_hints(vbox);

 return drm_irq_install(&vbox->ddev, vbox->ddev.pdev->irq);
}
