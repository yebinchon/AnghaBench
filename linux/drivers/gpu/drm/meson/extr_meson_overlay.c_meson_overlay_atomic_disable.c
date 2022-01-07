
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_overlay {struct meson_drm* priv; } ;
struct TYPE_2__ {int vd1_enabled; } ;
struct meson_drm {scalar_t__ io_base; TYPE_1__ viu; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ VD1_BLEND_SRC_CTRL ;
 scalar_t__ VD1_IF0_GEN_REG ;
 scalar_t__ VD2_BLEND_SRC_CTRL ;
 scalar_t__ VD2_IF0_GEN_REG ;
 scalar_t__ VPP_MISC ;
 int VPP_VD1_POSTBLEND ;
 int VPP_VD1_PREBLEND ;
 int VPU_COMPATIBLE_G12A ;
 scalar_t__ _REG (scalar_t__) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 struct meson_overlay* to_meson_overlay (struct drm_plane*) ;
 int writel_bits_relaxed (int,int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_overlay_atomic_disable(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct meson_overlay *meson_overlay = to_meson_overlay(plane);
 struct meson_drm *priv = meson_overlay->priv;

 DRM_DEBUG_DRIVER("\n");

 priv->viu.vd1_enabled = 0;


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  writel_relaxed(0, priv->io_base + _REG(VD1_BLEND_SRC_CTRL));
  writel_relaxed(0, priv->io_base + _REG(VD2_BLEND_SRC_CTRL));
  writel_relaxed(0, priv->io_base + _REG(VD1_IF0_GEN_REG + 0x17b0));
  writel_relaxed(0, priv->io_base + _REG(VD2_IF0_GEN_REG + 0x17b0));
 } else
  writel_bits_relaxed(VPP_VD1_POSTBLEND | VPP_VD1_PREBLEND, 0,
        priv->io_base + _REG(VPP_MISC));

}
