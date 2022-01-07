
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int xclk; int osc_clk; int cec_clk; } ;
struct drm_encoder {int crtc; } ;


 int VOU_HDMI ;
 int clk_prepare_enable (int ) ;
 struct zx_hdmi* to_zx_hdmi (struct drm_encoder*) ;
 int vou_inf_enable (int ,int ) ;
 int zx_hdmi_hw_enable (struct zx_hdmi*) ;

__attribute__((used)) static void zx_hdmi_encoder_enable(struct drm_encoder *encoder)
{
 struct zx_hdmi *hdmi = to_zx_hdmi(encoder);

 clk_prepare_enable(hdmi->cec_clk);
 clk_prepare_enable(hdmi->osc_clk);
 clk_prepare_enable(hdmi->xclk);

 zx_hdmi_hw_enable(hdmi);

 vou_inf_enable(VOU_HDMI, encoder->crtc);
}
