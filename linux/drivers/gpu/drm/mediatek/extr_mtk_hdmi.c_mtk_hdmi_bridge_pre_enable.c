
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int powered; } ;
struct drm_bridge {int dummy; } ;


 struct mtk_hdmi* hdmi_ctx_from_bridge (struct drm_bridge*) ;
 int mtk_hdmi_hw_1p4_version_enable (struct mtk_hdmi*,int) ;
 int mtk_hdmi_hw_make_reg_writable (struct mtk_hdmi*,int) ;

__attribute__((used)) static void mtk_hdmi_bridge_pre_enable(struct drm_bridge *bridge)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);

 mtk_hdmi_hw_make_reg_writable(hdmi, 1);
 mtk_hdmi_hw_1p4_version_enable(hdmi, 1);

 hdmi->powered = 1;
}
