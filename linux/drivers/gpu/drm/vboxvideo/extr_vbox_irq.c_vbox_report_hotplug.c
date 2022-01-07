
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_private {int hotplug_work; } ;


 int schedule_work (int *) ;

void vbox_report_hotplug(struct vbox_private *vbox)
{
 schedule_work(&vbox->hotplug_work);
}
