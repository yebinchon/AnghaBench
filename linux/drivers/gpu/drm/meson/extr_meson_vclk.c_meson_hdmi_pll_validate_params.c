
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;


 unsigned int HDMI_FRAC_MAX_GXBB ;
 unsigned int HDMI_FRAC_MAX_GXL ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXBB ;
 int VPU_COMPATIBLE_GXL ;
 int VPU_COMPATIBLE_GXM ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;

__attribute__((used)) static bool meson_hdmi_pll_validate_params(struct meson_drm *priv,
        unsigned int m,
        unsigned int frac)
{
 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {

  if (m < 53 || m > 123)
   return 0;
  if (frac >= HDMI_FRAC_MAX_GXBB)
   return 0;
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
     meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL) ||
     meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {

  if (m < 106 || m > 247)
   return 0;
  if (frac >= HDMI_FRAC_MAX_GXL)
   return 0;
 }

 return 1;
}
