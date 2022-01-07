
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int VPP_SCALE_COEF ;
 int VPP_SCALE_COEF_IDX ;
 unsigned int const VPP_SCALE_HORIZONTAL_COEF ;
 scalar_t__ _REG (int ) ;
 int writel_relaxed (unsigned int const,scalar_t__) ;

__attribute__((used)) static void meson_vpp_write_vd_scaling_filter_coefs(struct meson_drm *priv,
          const unsigned int *coefs,
          bool is_horizontal)
{
 int i;

 writel_relaxed(is_horizontal ? VPP_SCALE_HORIZONTAL_COEF : 0,
   priv->io_base + _REG(VPP_SCALE_COEF_IDX));
 for (i = 0; i < 33; i++)
  writel_relaxed(coefs[i],
    priv->io_base + _REG(VPP_SCALE_COEF));
}
