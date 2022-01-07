
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int osb_blend1_size; int osb_blend0_size; int osd_blend_din0_scope_v; int osd_blend_din0_scope_h; } ;
struct meson_drm {scalar_t__ io_base; TYPE_1__ viu; } ;


 int OSD1_BLEND_SRC_CTRL ;
 int VIU_OSD_BLEND_BLEND0_SIZE ;
 int VIU_OSD_BLEND_BLEND1_SIZE ;
 int VIU_OSD_BLEND_DIN0_SCOPE_H ;
 int VIU_OSD_BLEND_DIN0_SCOPE_V ;
 scalar_t__ _REG (int ) ;
 int writel_bits_relaxed (int,int,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_g12a_crtc_enable_osd1(struct meson_drm *priv)
{
 writel_relaxed(priv->viu.osd_blend_din0_scope_h,
         priv->io_base +
         _REG(VIU_OSD_BLEND_DIN0_SCOPE_H));
 writel_relaxed(priv->viu.osd_blend_din0_scope_v,
         priv->io_base +
         _REG(VIU_OSD_BLEND_DIN0_SCOPE_V));
 writel_relaxed(priv->viu.osb_blend0_size,
         priv->io_base +
         _REG(VIU_OSD_BLEND_BLEND0_SIZE));
 writel_relaxed(priv->viu.osb_blend1_size,
         priv->io_base +
         _REG(VIU_OSD_BLEND_BLEND1_SIZE));
 writel_bits_relaxed(3 << 8, 3 << 8,
       priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
}
