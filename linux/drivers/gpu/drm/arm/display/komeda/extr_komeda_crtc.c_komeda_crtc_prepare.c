
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct komeda_pipeline {int id; int pxlclk; } ;
struct komeda_dev {int dpmode; int lock; int aclk; TYPE_4__* funcs; } ;
struct drm_display_mode {int crtc_clock; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; } ;
struct komeda_crtc_state {TYPE_3__ base; } ;
struct TYPE_6__ {int state; TYPE_1__* dev; } ;
struct komeda_crtc {TYPE_2__ base; struct komeda_pipeline* master; } ;
struct TYPE_8__ {int (* change_opmode ) (struct komeda_dev*,int) ;} ;
struct TYPE_5__ {struct komeda_dev* dev_private; } ;


 int BIT (int ) ;
 int DRM_ERROR (char*,...) ;
 int KOMEDA_MODE_DUAL_DISP ;
 scalar_t__ WARN_ON (int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int komeda_crtc_get_aclk (struct komeda_crtc_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct komeda_dev*,int) ;
 struct komeda_crtc_state* to_kcrtc_st (int ) ;

__attribute__((used)) static int
komeda_crtc_prepare(struct komeda_crtc *kcrtc)
{
 struct komeda_dev *mdev = kcrtc->base.dev->dev_private;
 struct komeda_pipeline *master = kcrtc->master;
 struct komeda_crtc_state *kcrtc_st = to_kcrtc_st(kcrtc->base.state);
 struct drm_display_mode *mode = &kcrtc_st->base.adjusted_mode;
 u32 new_mode;
 int err;

 mutex_lock(&mdev->lock);

 new_mode = mdev->dpmode | BIT(master->id);
 if (WARN_ON(new_mode == mdev->dpmode)) {
  err = 0;
  goto unlock;
 }

 err = mdev->funcs->change_opmode(mdev, new_mode);
 if (err) {
  DRM_ERROR("failed to change opmode: 0x%x -> 0x%x.\n,",
     mdev->dpmode, new_mode);
  goto unlock;
 }

 mdev->dpmode = new_mode;





 if (new_mode != KOMEDA_MODE_DUAL_DISP) {
  err = clk_set_rate(mdev->aclk, komeda_crtc_get_aclk(kcrtc_st));
  if (err)
   DRM_ERROR("failed to set aclk.\n");
  err = clk_prepare_enable(mdev->aclk);
  if (err)
   DRM_ERROR("failed to enable aclk.\n");
 }

 err = clk_set_rate(master->pxlclk, mode->crtc_clock * 1000);
 if (err)
  DRM_ERROR("failed to set pxlclk for pipe%d\n", master->id);
 err = clk_prepare_enable(master->pxlclk);
 if (err)
  DRM_ERROR("failed to enable pxl clk for pipe%d.\n", master->id);

unlock:
 mutex_unlock(&mdev->lock);

 return err;
}
