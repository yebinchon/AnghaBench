
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int vpll_clk; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;


 int clk_set_rate (int ,int) ;
 struct rockchip_hdmi* to_rockchip_hdmi (struct drm_encoder*) ;

__attribute__((used)) static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
           struct drm_display_mode *mode,
           struct drm_display_mode *adj_mode)
{
 struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);

 clk_set_rate(hdmi->vpll_clk, adj_mode->clock * 1000);
}
