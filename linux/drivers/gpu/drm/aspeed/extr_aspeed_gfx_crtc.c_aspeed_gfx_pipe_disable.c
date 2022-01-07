
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct aspeed_gfx {int dummy; } ;


 int aspeed_gfx_disable_controller (struct aspeed_gfx*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 struct aspeed_gfx* drm_pipe_to_aspeed_gfx (struct drm_simple_display_pipe*) ;

__attribute__((used)) static void aspeed_gfx_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct aspeed_gfx *priv = drm_pipe_to_aspeed_gfx(pipe);
 struct drm_crtc *crtc = &pipe->crtc;

 drm_crtc_vblank_off(crtc);
 aspeed_gfx_disable_controller(priv);
}
