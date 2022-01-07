
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_win {int dummy; } ;
struct vop {int len; int is_enabled; int dev; int dclk; int reg_lock; struct vop_win* win; TYPE_1__* data; scalar_t__ regs; int * regsbak; int drm_dev; } ;
struct drm_crtc_state {int self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int win_size; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int VOP_REG_SET (struct vop*,int ,int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int common ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int rockchip_drm_dma_attach_device (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int standby ;
 struct vop* to_vop (struct drm_crtc*) ;
 int vop_cfg_done (struct vop*) ;
 int vop_core_clks_disable (struct vop*) ;
 int vop_core_clks_enable (struct vop*) ;
 int vop_win_disable (struct vop*,struct vop_win*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
{
 struct vop *vop = to_vop(crtc);
 int ret, i;

 ret = pm_runtime_get_sync(vop->dev);
 if (ret < 0) {
  DRM_DEV_ERROR(vop->dev, "failed to get pm runtime: %d\n", ret);
  return ret;
 }

 ret = vop_core_clks_enable(vop);
 if (WARN_ON(ret < 0))
  goto err_put_pm_runtime;

 ret = clk_enable(vop->dclk);
 if (WARN_ON(ret < 0))
  goto err_disable_core;







 ret = rockchip_drm_dma_attach_device(vop->drm_dev, vop->dev);
 if (ret) {
  DRM_DEV_ERROR(vop->dev,
         "failed to attach dma mapping, %d\n", ret);
  goto err_disable_dclk;
 }

 spin_lock(&vop->reg_lock);
 for (i = 0; i < vop->len; i += 4)
  writel_relaxed(vop->regsbak[i / 4], vop->regs + i);
 if (!old_state || !old_state->self_refresh_active) {
  for (i = 0; i < vop->data->win_size; i++) {
   struct vop_win *vop_win = &vop->win[i];

   vop_win_disable(vop, vop_win);
  }
 }
 spin_unlock(&vop->reg_lock);

 vop_cfg_done(vop);




 vop->is_enabled = 1;

 spin_lock(&vop->reg_lock);

 VOP_REG_SET(vop, common, standby, 1);

 spin_unlock(&vop->reg_lock);

 drm_crtc_vblank_on(crtc);

 return 0;

err_disable_dclk:
 clk_disable(vop->dclk);
err_disable_core:
 vop_core_clks_disable(vop);
err_put_pm_runtime:
 pm_runtime_put_sync(vop->dev);
 return ret;
}
