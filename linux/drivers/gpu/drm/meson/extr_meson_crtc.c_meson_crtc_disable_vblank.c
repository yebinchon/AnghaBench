
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct drm_crtc {int dummy; } ;


 int meson_venc_disable_vsync (struct meson_drm*) ;
 struct meson_crtc* to_meson_crtc (struct drm_crtc*) ;

__attribute__((used)) static void meson_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 struct meson_drm *priv = meson_crtc->priv;

 meson_venc_disable_vsync(priv);
}
