
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_crtc {int dummy; } ;
struct vop {int dev; int line_flag_completion; int dsp_hold_completion; int irq_lock; struct drm_crtc crtc; } ;
typedef int irqreturn_t ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int DRM_DEV_ERROR_RATELIMITED (int ,char*) ;
 int DSP_HOLD_VALID_INTR ;
 int FS_INTR ;
 int INTR_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LINE_FLAG_INTR ;
 int VOP_INTR_GET_TYPE (struct vop*,int ,int ) ;
 int VOP_INTR_SET_TYPE (struct vop*,int ,int,int) ;
 int clear ;
 int complete (int *) ;
 int drm_crtc_handle_vblank (struct drm_crtc*) ;
 int pm_runtime_get_if_in_use (int ) ;
 int pm_runtime_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int status ;
 int vop_core_clks_disable (struct vop*) ;
 scalar_t__ vop_core_clks_enable (struct vop*) ;
 int vop_handle_vblank (struct vop*) ;

__attribute__((used)) static irqreturn_t vop_isr(int irq, void *data)
{
 struct vop *vop = data;
 struct drm_crtc *crtc = &vop->crtc;
 uint32_t active_irqs;
 int ret = IRQ_NONE;





 if (!pm_runtime_get_if_in_use(vop->dev))
  return IRQ_NONE;

 if (vop_core_clks_enable(vop)) {
  DRM_DEV_ERROR_RATELIMITED(vop->dev, "couldn't enable clocks\n");
  goto out;
 }





 spin_lock(&vop->irq_lock);

 active_irqs = VOP_INTR_GET_TYPE(vop, status, INTR_MASK);

 if (active_irqs)
  VOP_INTR_SET_TYPE(vop, clear, active_irqs, 1);

 spin_unlock(&vop->irq_lock);


 if (!active_irqs)
  goto out_disable;

 if (active_irqs & DSP_HOLD_VALID_INTR) {
  complete(&vop->dsp_hold_completion);
  active_irqs &= ~DSP_HOLD_VALID_INTR;
  ret = IRQ_HANDLED;
 }

 if (active_irqs & LINE_FLAG_INTR) {
  complete(&vop->line_flag_completion);
  active_irqs &= ~LINE_FLAG_INTR;
  ret = IRQ_HANDLED;
 }

 if (active_irqs & FS_INTR) {
  drm_crtc_handle_vblank(crtc);
  vop_handle_vblank(vop);
  active_irqs &= ~FS_INTR;
  ret = IRQ_HANDLED;
 }


 if (active_irqs)
  DRM_DEV_ERROR(vop->dev, "Unknown VOP IRQs: %#02x\n",
         active_irqs);

out_disable:
 vop_core_clks_disable(vop);
out:
 pm_runtime_put(vop->dev);
 return ret;
}
