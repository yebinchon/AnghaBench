
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;
struct drm_display_mode {int flags; int clock; int vdisplay; } ;


 int CFG2_MHL_DE_SEL ;
 int CFG4_MHL_MODE ;
 int DRM_MODE_FLAG_INTERLACE ;
 int GRL_CFG2 ;
 int GRL_CFG4 ;
 int mtk_hdmi_clear_bits (struct mtk_hdmi*,int ,int ) ;
 int mtk_hdmi_set_bits (struct mtk_hdmi*,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_msic_setting(struct mtk_hdmi *hdmi,
         struct drm_display_mode *mode)
{
 mtk_hdmi_clear_bits(hdmi, GRL_CFG4, CFG4_MHL_MODE);

 if (mode->flags & DRM_MODE_FLAG_INTERLACE &&
     mode->clock == 74250 &&
     mode->vdisplay == 1080)
  mtk_hdmi_clear_bits(hdmi, GRL_CFG2, CFG2_MHL_DE_SEL);
 else
  mtk_hdmi_set_bits(hdmi, GRL_CFG2, CFG2_MHL_DE_SEL);
}
