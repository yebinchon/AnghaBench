
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct platform_device {int dev; } ;
struct msm_kms {int aspace; } ;
struct mdp5_pipeline {scalar_t__ r_mixer; } ;
struct TYPE_3__ {struct msm_kms base; } ;
struct mdp5_kms {TYPE_1__ base; struct platform_device* pdev; } ;
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_pipeline pipeline; struct mdp5_ctl* ctl; } ;
struct TYPE_4__ {int lock; void* height; void* width; struct drm_gem_object* scanout_bo; scalar_t__ iova; } ;
struct mdp5_crtc {int unref_cursor_work; TYPE_2__ cursor; int lm_cursor_enabled; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;
struct drm_crtc {struct drm_device* dev; int state; } ;


 void* CURSOR_HEIGHT ;
 void* CURSOR_WIDTH ;
 int DBG (char*) ;
 int DRM_DEV_ERROR (int ,char*,char*,int) ;
 int EINVAL ;
 int ENOENT ;
 int PENDING_CURSOR ;
 int crtc_flush (struct drm_crtc*,void*) ;
 int dev_warn (int ,char*) ;
 int drm_flip_work_queue (int *,struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,void*) ;
 struct mdp5_kms* get_kms (struct drm_crtc*) ;
 int mdp5_crtc_restore_cursor (struct drm_crtc*) ;
 int mdp5_ctl_set_cursor (struct mdp5_ctl*,struct mdp5_pipeline*,int ,int) ;
 void* mdp_ctl_flush_mask_cursor (int ) ;
 int msm_gem_get_and_pin_iova (struct drm_gem_object*,int ,scalar_t__*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int request_pending (struct drm_crtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

__attribute__((used)) static int mdp5_crtc_cursor_set(struct drm_crtc *crtc,
  struct drm_file *file, uint32_t handle,
  uint32_t width, uint32_t height)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
 struct drm_device *dev = crtc->dev;
 struct mdp5_kms *mdp5_kms = get_kms(crtc);
 struct platform_device *pdev = mdp5_kms->pdev;
 struct msm_kms *kms = &mdp5_kms->base.base;
 struct drm_gem_object *cursor_bo, *old_bo = ((void*)0);
 struct mdp5_ctl *ctl;
 int ret;
 uint32_t flush_mask = mdp_ctl_flush_mask_cursor(0);
 bool cursor_enable = 1;
 unsigned long flags;

 if (!mdp5_crtc->lm_cursor_enabled) {
  dev_warn(dev->dev,
    "cursor_set is deprecated with cursor planes\n");
  return -EINVAL;
 }

 if ((width > CURSOR_WIDTH) || (height > CURSOR_HEIGHT)) {
  DRM_DEV_ERROR(dev->dev, "bad cursor size: %dx%d\n", width, height);
  return -EINVAL;
 }

 ctl = mdp5_cstate->ctl;
 if (!ctl)
  return -EINVAL;


 if (mdp5_cstate->pipeline.r_mixer)
  return -EINVAL;

 if (!handle) {
  DBG("Cursor off");
  cursor_enable = 0;
  mdp5_crtc->cursor.iova = 0;
  pm_runtime_get_sync(&pdev->dev);
  goto set_cursor;
 }

 cursor_bo = drm_gem_object_lookup(file, handle);
 if (!cursor_bo)
  return -ENOENT;

 ret = msm_gem_get_and_pin_iova(cursor_bo, kms->aspace,
   &mdp5_crtc->cursor.iova);
 if (ret)
  return -EINVAL;

 pm_runtime_get_sync(&pdev->dev);

 spin_lock_irqsave(&mdp5_crtc->cursor.lock, flags);
 old_bo = mdp5_crtc->cursor.scanout_bo;

 mdp5_crtc->cursor.scanout_bo = cursor_bo;
 mdp5_crtc->cursor.width = width;
 mdp5_crtc->cursor.height = height;

 mdp5_crtc_restore_cursor(crtc);

 spin_unlock_irqrestore(&mdp5_crtc->cursor.lock, flags);

set_cursor:
 ret = mdp5_ctl_set_cursor(ctl, pipeline, 0, cursor_enable);
 if (ret) {
  DRM_DEV_ERROR(dev->dev, "failed to %sable cursor: %d\n",
    cursor_enable ? "en" : "dis", ret);
  goto end;
 }

 crtc_flush(crtc, flush_mask);

end:
 pm_runtime_put_sync(&pdev->dev);
 if (old_bo) {
  drm_flip_work_queue(&mdp5_crtc->unref_cursor_work, old_bo);

  request_pending(crtc, PENDING_CURSOR);
 }
 return ret;
}
