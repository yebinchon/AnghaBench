
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct dpu_crtc {int * event; int name; } ;


 int DRMID (struct drm_crtc*) ;
 int DRM_DEBUG_VBL (char*,int ,int *) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 int trace_dpu_crtc_complete_flip (int ) ;

__attribute__((used)) static void _dpu_crtc_complete_flip(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 if (dpu_crtc->event) {
  DRM_DEBUG_VBL("%s: send event: %pK\n", dpu_crtc->name,
         dpu_crtc->event);
  trace_dpu_crtc_complete_flip(DRMID(crtc));
  drm_crtc_send_vblank_event(crtc, dpu_crtc->event);
  dpu_crtc->event = ((void*)0);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
