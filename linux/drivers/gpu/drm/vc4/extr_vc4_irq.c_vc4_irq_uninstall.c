
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int overflow_mem_work; int v3d; } ;
struct drm_device {int irq; } ;


 int V3D_DRIVER_IRQS ;
 int V3D_INTCTL ;
 int V3D_INTDIS ;
 int V3D_WRITE (int ,int ) ;
 int cancel_work_sync (int *) ;
 int disable_irq (int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

void
vc4_irq_uninstall(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 if (!vc4->v3d)
  return;


 V3D_WRITE(V3D_INTDIS, V3D_DRIVER_IRQS);


 V3D_WRITE(V3D_INTCTL, V3D_DRIVER_IRQS);


 disable_irq(dev->irq);

 cancel_work_sync(&vc4->overflow_mem_work);
}
