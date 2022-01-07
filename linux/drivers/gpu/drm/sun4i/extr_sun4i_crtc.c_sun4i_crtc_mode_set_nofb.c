
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_crtc {int tcon; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;


 struct sun4i_crtc* drm_crtc_to_sun4i_crtc (struct drm_crtc*) ;
 struct drm_encoder* sun4i_crtc_get_encoder (struct drm_crtc*) ;
 int sun4i_tcon_mode_set (int ,struct drm_encoder*,struct drm_display_mode*) ;

__attribute__((used)) static void sun4i_crtc_mode_set_nofb(struct drm_crtc *crtc)
{
 struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 struct drm_encoder *encoder = sun4i_crtc_get_encoder(crtc);
 struct sun4i_crtc *scrtc = drm_crtc_to_sun4i_crtc(crtc);

 sun4i_tcon_mode_set(scrtc->tcon, encoder, mode);
}
