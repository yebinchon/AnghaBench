
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_crtc {int pending_wait; } ;
struct drm_crtc {int dummy; } ;


 int msecs_to_jiffies (int) ;
 int omap_crtc_is_pending (struct drm_crtc*) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;
 int wait_event_timeout (int ,int,int ) ;

int omap_crtc_wait_pending(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);





 return wait_event_timeout(omap_crtc->pending_wait,
      !omap_crtc_is_pending(crtc),
      msecs_to_jiffies(250));
}
