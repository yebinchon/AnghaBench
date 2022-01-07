
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int job_lock; } ;
struct drm_device {int dummy; } ;


 int V3D_DRIVER_IRQS ;
 int V3D_INTCTL ;
 int V3D_INTENA ;
 int V3D_WRITE (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_cancel_bin_job (struct drm_device*) ;
 int vc4_irq_finish_render_job (struct drm_device*) ;

void vc4_irq_reset(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 unsigned long irqflags;


 V3D_WRITE(V3D_INTCTL, V3D_DRIVER_IRQS);







 V3D_WRITE(V3D_INTENA, V3D_DRIVER_IRQS);

 spin_lock_irqsave(&vc4->job_lock, irqflags);
 vc4_cancel_bin_job(dev);
 vc4_irq_finish_render_job(dev);
 spin_unlock_irqrestore(&vc4->job_lock, irqflags);
}
