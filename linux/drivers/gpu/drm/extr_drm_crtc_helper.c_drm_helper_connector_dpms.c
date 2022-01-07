
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_crtc* crtc; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;
struct drm_connector {int dpms; int dev; struct drm_encoder* encoder; } ;


 int DRM_MODE_DPMS_OFF ;
 int WARN_ON (int ) ;
 int drm_drv_uses_atomic_modeset (int ) ;
 int drm_helper_choose_crtc_dpms (struct drm_crtc*) ;
 int drm_helper_choose_encoder_dpms (struct drm_encoder*) ;
 int drm_helper_encoder_dpms (struct drm_encoder*,int) ;
 int stub1 (struct drm_crtc*,int ) ;
 int stub2 (struct drm_crtc*,int ) ;

int drm_helper_connector_dpms(struct drm_connector *connector, int mode)
{
 struct drm_encoder *encoder = connector->encoder;
 struct drm_crtc *crtc = encoder ? encoder->crtc : ((void*)0);
 int old_dpms, encoder_dpms = DRM_MODE_DPMS_OFF;

 WARN_ON(drm_drv_uses_atomic_modeset(connector->dev));

 if (mode == connector->dpms)
  return 0;

 old_dpms = connector->dpms;
 connector->dpms = mode;

 if (encoder)
  encoder_dpms = drm_helper_choose_encoder_dpms(encoder);


 if (mode < old_dpms) {
  if (crtc) {
   const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
   if (crtc_funcs->dpms)
    (*crtc_funcs->dpms) (crtc,
           drm_helper_choose_crtc_dpms(crtc));
  }
  if (encoder)
   drm_helper_encoder_dpms(encoder, encoder_dpms);
 }


 if (mode > old_dpms) {
  if (encoder)
   drm_helper_encoder_dpms(encoder, encoder_dpms);
  if (crtc) {
   const struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
   if (crtc_funcs->dpms)
    (*crtc_funcs->dpms) (crtc,
           drm_helper_choose_crtc_dpms(crtc));
  }
 }

 return 0;
}
