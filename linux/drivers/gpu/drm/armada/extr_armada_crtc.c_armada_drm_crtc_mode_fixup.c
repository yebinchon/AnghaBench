
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct armada_crtc {TYPE_1__* variant; } ;
struct TYPE_2__ {int (* compute_clock ) (struct armada_crtc*,struct drm_display_mode*,int *) ;} ;


 int CRTC_INTERLACE_HALVE_V ;
 scalar_t__ MODE_OK ;
 scalar_t__ armada_drm_crtc_mode_valid (struct drm_crtc*,struct drm_display_mode*) ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 int stub1 (struct armada_crtc*,struct drm_display_mode*,int *) ;

__attribute__((used)) static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 const struct drm_display_mode *mode, struct drm_display_mode *adj)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 int ret;






 drm_mode_set_crtcinfo(adj, CRTC_INTERLACE_HALVE_V);





 if (armada_drm_crtc_mode_valid(crtc, adj) != MODE_OK)
  return 0;


 ret = dcrtc->variant->compute_clock(dcrtc, adj, ((void*)0));
 if (ret)
  return 0;

 return 1;
}
