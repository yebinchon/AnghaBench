
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int cec_clk; int osc_clk; int xclk; } ;
struct drm_encoder {int crtc; } ;


 int VOU_HDMI ;
 int clk_disable_unprepare (int ) ;
 struct zx_hdmi* to_zx_hdmi (struct drm_encoder*) ;
 int vou_inf_disable (int ,int ) ;
 int zx_hdmi_hw_disable (struct zx_hdmi*) ;

__attribute__((used)) static void zx_hdmi_encoder_disable(struct drm_encoder *encoder)
{
 struct zx_hdmi *hdmi = to_zx_hdmi(encoder);

 vou_inf_disable(VOU_HDMI, encoder->crtc);

 zx_hdmi_hw_disable(hdmi);

 clk_disable_unprepare(hdmi->xclk);
 clk_disable_unprepare(hdmi->osc_clk);
 clk_disable_unprepare(hdmi->cec_clk);
}
