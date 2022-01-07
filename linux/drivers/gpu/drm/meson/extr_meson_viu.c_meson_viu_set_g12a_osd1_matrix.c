
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int BIT (int ) ;
 int VPP_WRAP_OSD1_MATRIX_COEF00_01 ;
 int VPP_WRAP_OSD1_MATRIX_COEF02_10 ;
 int VPP_WRAP_OSD1_MATRIX_COEF11_12 ;
 int VPP_WRAP_OSD1_MATRIX_COEF20_21 ;
 int VPP_WRAP_OSD1_MATRIX_COEF22 ;
 int VPP_WRAP_OSD1_MATRIX_EN_CTRL ;
 int VPP_WRAP_OSD1_MATRIX_OFFSET0_1 ;
 int VPP_WRAP_OSD1_MATRIX_OFFSET2 ;
 int VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1 ;
 int VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2 ;
 scalar_t__ _REG (int ) ;
 int writel (int,scalar_t__) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static void meson_viu_set_g12a_osd1_matrix(struct meson_drm *priv,
        int *m, bool csc_on)
{

 writel(((m[0] & 0xfff) << 16) | (m[1] & 0xfff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_PRE_OFFSET0_1));
 writel(m[2] & 0xfff,
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_PRE_OFFSET2));
 writel(((m[3] & 0x1fff) << 16) | (m[4] & 0x1fff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_COEF00_01));
 writel(((m[5] & 0x1fff) << 16) | (m[6] & 0x1fff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_COEF02_10));
 writel(((m[7] & 0x1fff) << 16) | (m[8] & 0x1fff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_COEF11_12));
 writel(((m[9] & 0x1fff) << 16) | (m[10] & 0x1fff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_COEF20_21));
 writel((m[11] & 0x1fff) << 16,
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_COEF22));

 writel(((m[18] & 0xfff) << 16) | (m[19] & 0xfff),
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_OFFSET0_1));
 writel(m[20] & 0xfff,
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_OFFSET2));

 writel_bits_relaxed(BIT(0), csc_on ? BIT(0) : 0,
  priv->io_base + _REG(VPP_WRAP_OSD1_MATRIX_EN_CTRL));
}
