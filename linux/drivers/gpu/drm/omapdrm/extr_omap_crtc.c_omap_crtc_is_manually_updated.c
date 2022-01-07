
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int caps; } ;
struct omap_crtc {TYPE_2__* pipe; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* output; } ;
struct TYPE_3__ {struct omap_dss_device* next; } ;


 int DBG (char*) ;
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool omap_crtc_is_manually_updated(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct omap_dss_device *display = omap_crtc->pipe->output->next;

 if (!display)
  return 0;

 if (display->caps & OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE) {
  DBG("detected manually updated display!");
  return 1;
 }

 return 0;
}
