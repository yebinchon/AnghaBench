
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop {int is_enabled; int vop_lock; int dev; int dclk; int drm_dev; int dsp_hold_completion; int reg_lock; int event; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* state; TYPE_1__* dev; } ;
struct TYPE_4__ {int * event; int active; scalar_t__ self_refresh_active; } ;
struct TYPE_3__ {int event_lock; } ;


 int VOP_REG_SET (struct vop*,int ,int ,int) ;
 int WARN_ON (int ) ;
 int clk_disable (int ) ;
 int common ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int reinit_completion (int *) ;
 int rockchip_drm_dma_detach_device (int ,int ) ;
 int rockchip_drm_set_win_enabled (struct drm_crtc*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int standby ;
 struct vop* to_vop (struct drm_crtc*) ;
 int vop_core_clks_disable (struct vop*) ;
 int vop_dsp_hold_valid_irq_disable (struct vop*) ;
 int vop_dsp_hold_valid_irq_enable (struct vop*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct vop *vop = to_vop(crtc);

 WARN_ON(vop->event);

 if (crtc->state->self_refresh_active)
  rockchip_drm_set_win_enabled(crtc, 0);

 mutex_lock(&vop->vop_lock);

 drm_crtc_vblank_off(crtc);

 if (crtc->state->self_refresh_active)
  goto out;
 reinit_completion(&vop->dsp_hold_completion);
 vop_dsp_hold_valid_irq_enable(vop);

 spin_lock(&vop->reg_lock);

 VOP_REG_SET(vop, common, standby, 1);

 spin_unlock(&vop->reg_lock);

 wait_for_completion(&vop->dsp_hold_completion);

 vop_dsp_hold_valid_irq_disable(vop);

 vop->is_enabled = 0;




 rockchip_drm_dma_detach_device(vop->drm_dev, vop->dev);

 clk_disable(vop->dclk);
 vop_core_clks_disable(vop);
 pm_runtime_put(vop->dev);

out:
 mutex_unlock(&vop->vop_lock);

 if (crtc->state->event && !crtc->state->active) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  spin_unlock_irq(&crtc->dev->event_lock);

  crtc->state->event = ((void*)0);
 }
}
