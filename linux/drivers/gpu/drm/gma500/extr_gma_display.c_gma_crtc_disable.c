
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gtt_range {int dummy; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {TYPE_2__* primary; struct drm_crtc_helper_funcs* helper_private; } ;
struct TYPE_4__ {TYPE_1__* fb; } ;
struct TYPE_3__ {int * obj; } ;


 int DRM_MODE_DPMS_OFF ;
 int psb_gtt_unpin (struct gtt_range*) ;
 int stub1 (struct drm_crtc*,int ) ;
 struct gtt_range* to_gtt_range (int ) ;

void gma_crtc_disable(struct drm_crtc *crtc)
{
 struct gtt_range *gt;
 const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;

 crtc_funcs->dpms(crtc, DRM_MODE_DPMS_OFF);

 if (crtc->primary->fb) {
  gt = to_gtt_range(crtc->primary->fb->obj[0]);
  psb_gtt_unpin(gt);
 }
}
