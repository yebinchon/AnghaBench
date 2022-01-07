
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int osd1_commit; int vd1_commit; } ;
struct meson_drm {TYPE_1__ viu; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 struct meson_crtc* to_meson_crtc (struct drm_crtc*) ;

__attribute__((used)) static void meson_crtc_atomic_flush(struct drm_crtc *crtc,
        struct drm_crtc_state *old_crtc_state)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 struct meson_drm *priv = meson_crtc->priv;

 priv->viu.osd1_commit = 1;
 priv->viu.vd1_commit = 1;
}
