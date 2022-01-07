
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_crtc {int name; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DBG (char*,int ,struct drm_pending_vblank_event*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void complete_flip(struct drm_crtc *crtc, struct drm_file *file)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct drm_pending_vblank_event *event;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 event = mdp4_crtc->event;
 if (event) {
  mdp4_crtc->event = ((void*)0);
  DBG("%s: send event: %p", mdp4_crtc->name, event);
  drm_crtc_send_vblank_event(crtc, event);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
