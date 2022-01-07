
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mdp5_kms {TYPE_2__* dev; int base; TYPE_1__* pdev; } ;
struct mdp5_crtc_state {scalar_t__ cmd_mode; } ;
struct mdp5_crtc {int enabled; int event; int err; int pp_done; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; int name; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int * event; int active; } ;
struct TYPE_5__ {int event_lock; } ;
struct TYPE_4__ {struct device dev; } ;


 int DBG (char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 struct mdp5_kms* get_kms (struct drm_crtc*) ;
 int mdp_irq_unregister (int *,int *) ;
 int pm_runtime_put_sync (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (TYPE_3__*) ;

__attribute__((used)) static void mdp5_crtc_atomic_disable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_kms *mdp5_kms = get_kms(crtc);
 struct device *dev = &mdp5_kms->pdev->dev;
 unsigned long flags;

 DBG("%s", crtc->name);

 if (WARN_ON(!mdp5_crtc->enabled))
  return;


 drm_crtc_vblank_off(crtc);

 if (mdp5_cstate->cmd_mode)
  mdp_irq_unregister(&mdp5_kms->base, &mdp5_crtc->pp_done);

 mdp_irq_unregister(&mdp5_kms->base, &mdp5_crtc->err);
 pm_runtime_put_sync(dev);

 if (crtc->state->event && !crtc->state->active) {
  WARN_ON(mdp5_crtc->event);
  spin_lock_irqsave(&mdp5_kms->dev->event_lock, flags);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
  spin_unlock_irqrestore(&mdp5_kms->dev->event_lock, flags);
 }

 mdp5_crtc->enabled = 0;
}
