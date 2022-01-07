
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct meson_drm {int dummy; } ;


 unsigned int HDMI_FRAC_MAX_G12A ;
 unsigned int HDMI_FRAC_MAX_GXBB ;
 unsigned int HDMI_FRAC_MAX_GXL ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXBB ;
 unsigned int XTAL_FREQ ;
 unsigned int div_u64 (int,unsigned int) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 unsigned int min (int ,int ) ;

__attribute__((used)) static unsigned int meson_hdmi_pll_get_frac(struct meson_drm *priv,
         unsigned int m,
         unsigned int pll_freq)
{
 unsigned int parent_freq = XTAL_FREQ;
 unsigned int frac_max = HDMI_FRAC_MAX_GXL;
 unsigned int frac_m;
 unsigned int frac;


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
  frac_max = HDMI_FRAC_MAX_GXBB;
  parent_freq *= 2;
 }

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
  frac_max = HDMI_FRAC_MAX_G12A;


 if (pll_freq / m == parent_freq &&
     pll_freq % m == 0)
  return 0;

 frac = div_u64((u64)pll_freq * (u64)frac_max, parent_freq);
 frac_m = m * frac_max;
 if (frac_m > frac)
  return frac_max;
 frac -= frac_m;

 return min((u16)frac, (u16)(frac_max - 1));
}
