
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_crtc crtc; } ;
struct xen_drm_front_drm_pipeline {int * pending_event; TYPE_1__ pipe; } ;
struct drm_device {int event_lock; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_pending_event(struct xen_drm_front_drm_pipeline *pipeline)
{
 struct drm_crtc *crtc = &pipeline->pipe.crtc;
 struct drm_device *dev = crtc->dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 if (pipeline->pending_event)
  drm_crtc_send_vblank_event(crtc, pipeline->pending_event);
 pipeline->pending_event = ((void*)0);
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
