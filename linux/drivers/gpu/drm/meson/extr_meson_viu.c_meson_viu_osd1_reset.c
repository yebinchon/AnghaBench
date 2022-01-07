
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct meson_drm {scalar_t__ io_base; } ;


 int VIU_OSD1_CTRL_STAT2 ;
 int VIU_OSD1_FIFO_CTRL_STAT ;
 int VIU_SW_RESET ;
 int VIU_SW_RESET_OSD1 ;
 scalar_t__ _REG (int ) ;
 int meson_viu_load_matrix (struct meson_drm*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

void meson_viu_osd1_reset(struct meson_drm *priv)
{
 uint32_t osd1_fifo_ctrl_stat, osd1_ctrl_stat2;


 osd1_fifo_ctrl_stat = readl_relaxed(
    priv->io_base + _REG(VIU_OSD1_FIFO_CTRL_STAT));
 osd1_ctrl_stat2 = readl_relaxed(
    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));


 writel_bits_relaxed(VIU_SW_RESET_OSD1, VIU_SW_RESET_OSD1,
       priv->io_base + _REG(VIU_SW_RESET));
 writel_bits_relaxed(VIU_SW_RESET_OSD1, 0,
       priv->io_base + _REG(VIU_SW_RESET));


 writel_relaxed(osd1_fifo_ctrl_stat,
         priv->io_base + _REG(VIU_OSD1_FIFO_CTRL_STAT));
 writel_relaxed(osd1_ctrl_stat2,
         priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));


 meson_viu_load_matrix(priv);
}
