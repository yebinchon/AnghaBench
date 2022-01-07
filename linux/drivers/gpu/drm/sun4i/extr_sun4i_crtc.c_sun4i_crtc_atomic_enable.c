
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_crtc {int tcon; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct drm_encoder* sun4i_crtc_get_encoder (struct drm_crtc*) ;
 int sun4i_tcon_set_status (int ,struct drm_encoder*,int) ;

__attribute__((used)) static void sun4i_crtc_atomic_enable(struct drm_crtc *crtc,
         struct drm_crtc_state *old_state)
{
 struct drm_encoder *encoder = sun4i_crtc_get_encoder(crtc);
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);

 DRM_DEBUG_DRIVER("Enabling the CRTC\n");

 sun4i_tcon_set_status(scrtc->tcon, encoder, 1);

 drm_crtc_vblank_on(crtc);
}
