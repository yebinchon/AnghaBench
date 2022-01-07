
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct aspeed_gfx {int dummy; } ;


 int aspeed_gfx_crtc_mode_set_nofb (struct aspeed_gfx*) ;
 int aspeed_gfx_enable_controller (struct aspeed_gfx*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct aspeed_gfx* drm_pipe_to_aspeed_gfx (struct drm_simple_display_pipe*) ;

__attribute__((used)) static void aspeed_gfx_pipe_enable(struct drm_simple_display_pipe *pipe,
         struct drm_crtc_state *crtc_state,
         struct drm_plane_state *plane_state)
{
 struct aspeed_gfx *priv = drm_pipe_to_aspeed_gfx(pipe);
 struct drm_crtc *crtc = &pipe->crtc;

 aspeed_gfx_crtc_mode_set_nofb(priv);
 aspeed_gfx_enable_controller(priv);
 drm_crtc_vblank_on(crtc);
}
