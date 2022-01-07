
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int VPU_VIU_VENC_MUX_CTRL ;
 scalar_t__ _REG (int ) ;
 int writel (unsigned int,scalar_t__) ;

void meson_vpp_setup_mux(struct meson_drm *priv, unsigned int mux)
{
 writel(mux, priv->io_base + _REG(VPU_VIU_VENC_MUX_CTRL));
}
