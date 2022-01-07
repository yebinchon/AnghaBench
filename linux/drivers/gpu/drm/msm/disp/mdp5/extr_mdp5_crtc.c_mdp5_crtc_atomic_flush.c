
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mdp5_crtc_state {int pp_done_irqmask; int err_irqmask; int vblank_irqmask; scalar_t__ cmd_mode; int ctl; } ;
struct TYPE_7__ {int irqmask; } ;
struct TYPE_6__ {int irqmask; } ;
struct TYPE_5__ {int irqmask; } ;
struct mdp5_crtc {TYPE_3__ pp_done; TYPE_2__ err; TYPE_1__ vblank; int flushed_mask; int * event; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_4__* state; int name; struct drm_device* dev; } ;
struct TYPE_8__ {int * event; } ;


 int DBG (char*,int ,int *) ;
 int PENDING_FLIP ;
 int WARN_ON (int *) ;
 int blend_setup (struct drm_crtc*) ;
 int crtc_flush_all (struct drm_crtc*) ;
 int request_pending (struct drm_crtc*,int ) ;
 int request_pp_done_pending (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mdp5_crtc_atomic_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct drm_device *dev = crtc->dev;
 unsigned long flags;

 DBG("%s: event: %p", crtc->name, crtc->state->event);

 WARN_ON(mdp5_crtc->event);

 spin_lock_irqsave(&dev->event_lock, flags);
 mdp5_crtc->event = crtc->state->event;
 crtc->state->event = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);







 if (unlikely(!mdp5_cstate->ctl))
  return;

 blend_setup(crtc);







 if (mdp5_cstate->cmd_mode)
  request_pp_done_pending(crtc);

 mdp5_crtc->flushed_mask = crtc_flush_all(crtc);


 mdp5_crtc->vblank.irqmask = mdp5_cstate->vblank_irqmask;
 mdp5_crtc->err.irqmask = mdp5_cstate->err_irqmask;
 mdp5_crtc->pp_done.irqmask = mdp5_cstate->pp_done_irqmask;

 request_pending(crtc, PENDING_FLIP);
}
