
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdp5_kms {int base; TYPE_1__* pdev; } ;
struct mdp5_crtc_state {scalar_t__ cmd_mode; int pipeline; int ctl; } ;
struct TYPE_4__ {int lock; scalar_t__ iova; } ;
struct mdp5_crtc {int enabled; int pp_done; int err; TYPE_2__ cursor; scalar_t__ lm_cursor_enabled; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int name; int state; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int DBG (char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct mdp5_kms* get_kms (struct drm_crtc*) ;
 int mdp5_crtc_mode_set_nofb (struct drm_crtc*) ;
 int mdp5_crtc_restore_cursor (struct drm_crtc*) ;
 int mdp5_crtc_vblank_on (struct drm_crtc*) ;
 int mdp5_ctl_set_cursor (int ,int *,int ,int) ;
 int mdp_irq_register (int *,int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

__attribute__((used)) static void mdp5_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_kms *mdp5_kms = get_kms(crtc);
 struct device *dev = &mdp5_kms->pdev->dev;

 DBG("%s", crtc->name);

 if (WARN_ON(mdp5_crtc->enabled))
  return;

 pm_runtime_get_sync(dev);

 if (mdp5_crtc->lm_cursor_enabled) {




  if (mdp5_crtc->cursor.iova) {
   unsigned long flags;

   spin_lock_irqsave(&mdp5_crtc->cursor.lock, flags);
   mdp5_crtc_restore_cursor(crtc);
   spin_unlock_irqrestore(&mdp5_crtc->cursor.lock, flags);

   mdp5_ctl_set_cursor(mdp5_cstate->ctl,
         &mdp5_cstate->pipeline, 0, 1);
  } else {
   mdp5_ctl_set_cursor(mdp5_cstate->ctl,
         &mdp5_cstate->pipeline, 0, 0);
  }
 }


 mdp5_crtc_vblank_on(crtc);

 mdp5_crtc_mode_set_nofb(crtc);

 mdp_irq_register(&mdp5_kms->base, &mdp5_crtc->err);

 if (mdp5_cstate->cmd_mode)
  mdp_irq_register(&mdp5_kms->base, &mdp5_crtc->pp_done);

 mdp5_crtc->enabled = 1;
}
