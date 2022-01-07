
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct mdp5_kms {TYPE_3__* pdev; } ;
struct TYPE_5__ {scalar_t__ r_mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct TYPE_6__ {int x; int y; int lock; scalar_t__ height; scalar_t__ width; } ;
struct mdp5_crtc {TYPE_2__ cursor; int lm_cursor_enabled; } ;
struct drm_device {int dev; } ;
struct drm_crtc {TYPE_4__* state; struct drm_device* dev; } ;
struct TYPE_8__ {int enable; } ;
struct TYPE_7__ {int dev; } ;


 int EINVAL ;
 int crtc_flush (struct drm_crtc*,int ) ;
 int dev_warn (int ,char*) ;
 struct mdp5_kms* get_kms (struct drm_crtc*) ;
 int get_roi (struct drm_crtc*,int *,int *) ;
 int max (int,int) ;
 int mdp5_crtc_restore_cursor (struct drm_crtc*) ;
 int mdp_ctl_flush_mask_cursor (int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mdp5_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct mdp5_kms *mdp5_kms = get_kms(crtc);
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 uint32_t flush_mask = mdp_ctl_flush_mask_cursor(0);
 struct drm_device *dev = crtc->dev;
 uint32_t roi_w;
 uint32_t roi_h;
 unsigned long flags;

 if (!mdp5_crtc->lm_cursor_enabled) {
  dev_warn(dev->dev,
    "cursor_move is deprecated with cursor planes\n");
  return -EINVAL;
 }


 if (mdp5_cstate->pipeline.r_mixer)
  return -EINVAL;


 if (unlikely(!crtc->state->enable))
  return 0;


 mdp5_crtc->cursor.x = x = max(x, -(int)mdp5_crtc->cursor.width);
 mdp5_crtc->cursor.y = y = max(y, -(int)mdp5_crtc->cursor.height);

 get_roi(crtc, &roi_w, &roi_h);

 pm_runtime_get_sync(&mdp5_kms->pdev->dev);

 spin_lock_irqsave(&mdp5_crtc->cursor.lock, flags);
 mdp5_crtc_restore_cursor(crtc);
 spin_unlock_irqrestore(&mdp5_crtc->cursor.lock, flags);

 crtc_flush(crtc, flush_mask);

 pm_runtime_put_sync(&mdp5_kms->pdev->dev);

 return 0;
}
