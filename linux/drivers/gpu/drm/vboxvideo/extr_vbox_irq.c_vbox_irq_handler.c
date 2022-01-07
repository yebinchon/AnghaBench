
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbox_private {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int irqreturn_t ;


 int HGSMIHOSTFLAGS_CURSOR_CAPABILITIES ;
 int HGSMIHOSTFLAGS_HOTPLUG ;
 int HGSMIHOSTFLAGS_IRQ ;
 int HGSMIHOSTFLAGS_VSYNC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int vbox_clear_irq () ;
 int vbox_get_flags (struct vbox_private*) ;
 int vbox_report_hotplug (struct vbox_private*) ;

irqreturn_t vbox_irq_handler(int irq, void *arg)
{
 struct drm_device *dev = (struct drm_device *)arg;
 struct vbox_private *vbox = (struct vbox_private *)dev->dev_private;
 u32 host_flags = vbox_get_flags(vbox);

 if (!(host_flags & HGSMIHOSTFLAGS_IRQ))
  return IRQ_NONE;







 if (host_flags &
     (HGSMIHOSTFLAGS_HOTPLUG | HGSMIHOSTFLAGS_CURSOR_CAPABILITIES) &&
     !(host_flags & HGSMIHOSTFLAGS_VSYNC))
  vbox_report_hotplug(vbox);

 vbox_clear_irq();

 return IRQ_HANDLED;
}
