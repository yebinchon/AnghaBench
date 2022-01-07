
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp4_crtc {int * event; int name; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {int * event; } ;


 int DBG (char*,int ,int *) ;
 int PENDING_FLIP ;
 int WARN_ON (int *) ;
 int blend_setup (struct drm_crtc*) ;
 int crtc_flush (struct drm_crtc*) ;
 int request_pending (struct drm_crtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mdp4_crtc_atomic_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old_crtc_state)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 unsigned long flags;

 DBG("%s: event: %p", mdp4_crtc->name, crtc->state->event);

 WARN_ON(mdp4_crtc->event);

 spin_lock_irqsave(&dev->event_lock, flags);
 mdp4_crtc->event = crtc->state->event;
 crtc->state->event = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 blend_setup(crtc);
 crtc_flush(crtc);
 request_pending(crtc, PENDING_FLIP);
}
