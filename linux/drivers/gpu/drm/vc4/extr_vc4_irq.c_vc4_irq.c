
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_dev {int job_lock; int overflow_mem_work; } ;
struct drm_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int V3D_INTCTL ;
 int V3D_INTDIS ;
 int V3D_INT_FLDONE ;
 int V3D_INT_FRDONE ;
 int V3D_INT_OUTOMEM ;
 int V3D_READ (int ) ;
 int V3D_WRITE (int ,int) ;
 int barrier () ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_irq_finish_bin_job (struct drm_device*) ;
 int vc4_irq_finish_render_job (struct drm_device*) ;

irqreturn_t
vc4_irq(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 uint32_t intctl;
 irqreturn_t status = IRQ_NONE;

 barrier();
 intctl = V3D_READ(V3D_INTCTL);






 V3D_WRITE(V3D_INTCTL, intctl);

 if (intctl & V3D_INT_OUTOMEM) {

  V3D_WRITE(V3D_INTDIS, V3D_INT_OUTOMEM);
  schedule_work(&vc4->overflow_mem_work);
  status = IRQ_HANDLED;
 }

 if (intctl & V3D_INT_FLDONE) {
  spin_lock(&vc4->job_lock);
  vc4_irq_finish_bin_job(dev);
  spin_unlock(&vc4->job_lock);
  status = IRQ_HANDLED;
 }

 if (intctl & V3D_INT_FRDONE) {
  spin_lock(&vc4->job_lock);
  vc4_irq_finish_render_job(dev);
  spin_unlock(&vc4->job_lock);
  status = IRQ_HANDLED;
 }

 return status;
}
