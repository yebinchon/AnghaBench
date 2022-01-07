
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_plane {int enabled; struct meson_drm* priv; } ;
struct TYPE_2__ {int osd1_enabled; } ;
struct meson_drm {TYPE_1__ viu; scalar_t__ io_base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int OSD1_BLEND_SRC_CTRL ;
 int VIU_OSD1_POSTBLD_SRC_OSD1 ;
 int VPP_MISC ;
 int VPP_OSD1_POSTBLEND ;
 int VPU_COMPATIBLE_G12A ;
 scalar_t__ _REG (int ) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 struct meson_plane* to_meson_plane (struct drm_plane*) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static void meson_plane_atomic_disable(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct meson_plane *meson_plane = to_meson_plane(plane);
 struct meson_drm *priv = meson_plane->priv;


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
  writel_bits_relaxed(VIU_OSD1_POSTBLD_SRC_OSD1, 0,
        priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
 else
  writel_bits_relaxed(VPP_OSD1_POSTBLEND, 0,
        priv->io_base + _REG(VPP_MISC));

 meson_plane->enabled = 0;
 priv->viu.osd1_enabled = 0;
}
