
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dvi_mode; } ;
struct drm_display_mode {int dummy; } ;


 int mtk_hdmi_hw_enable_dvi_mode (struct mtk_hdmi*,int ) ;
 int mtk_hdmi_hw_enable_notice (struct mtk_hdmi*,int) ;
 int mtk_hdmi_hw_msic_setting (struct mtk_hdmi*,struct drm_display_mode*) ;
 int mtk_hdmi_hw_ncts_auto_write_enable (struct mtk_hdmi*,int) ;
 int mtk_hdmi_hw_reset (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_write_int_mask (struct mtk_hdmi*,int) ;

__attribute__((used)) static void mtk_hdmi_video_set_display_mode(struct mtk_hdmi *hdmi,
         struct drm_display_mode *mode)
{
 mtk_hdmi_hw_reset(hdmi);
 mtk_hdmi_hw_enable_notice(hdmi, 1);
 mtk_hdmi_hw_write_int_mask(hdmi, 0xff);
 mtk_hdmi_hw_enable_dvi_mode(hdmi, hdmi->dvi_mode);
 mtk_hdmi_hw_ncts_auto_write_enable(hdmi, 1);

 mtk_hdmi_hw_msic_setting(hdmi, mode);
}
